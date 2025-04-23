import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:springboot_test_bench/core/constants/app_routes.dart';
import 'package:springboot_test_bench/core/constants/app_theme.dart';
import 'package:springboot_test_bench/core/routes/generate_routes.dart';
import 'package:springboot_test_bench/dependencies/injector.dart';
import 'package:springboot_test_bench/presentation/screens/splash/cubit/splash_cubit.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';

final StompClient stompClient = StompClient(
  config: StompConfig.sockJS(
    url: 'http://localhost:8080/chat',
    onConnect: (StompFrame frame) {
      log('✅ Connected to WebSocket');

      // Subscribe to messages
      stompClient.subscribe(
        destination: "/topic/room/room1",
        callback: (frame) {
          log("📩 Received Message: ${frame.body}");
        },
      );

      // Send a message
      stompClient.send(
        destination: "/app/sendMessage/12345",
        body:
            '{"roomId": "12345", "content": "Hello from Flutter", "sender": "User1"}',
      );
    },
    onWebSocketError: (dynamic error) => print('❌ Error: $error'),
  ),
);

void main() async {
  //stompClient.activate();
  WidgetsFlutterBinding.ensureInitialized();
  await initInjectedDependencies();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ScreenUtilInit(
          designSize: Size(constraints.maxWidth, constraints.maxHeight),
          builder: (context, child) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => SplashCubit()..checkAuthStatus())
              ],
              child: MaterialApp(
                  theme: ThemeData(
                    primaryColor: kprimaryColor,
                    appBarTheme: AppBarTheme(
                      backgroundColor: kprimaryColor,
                      titleTextStyle: appbarStyle,
                      iconTheme: const IconThemeData(color: kWhiteColor),
                    ),
                  ),
                  debugShowCheckedModeBanner: false,
                  onGenerateRoute: GenerateRoutes().onGenerateRoute,
                  initialRoute: RoutesConstant.splash),
            );
          });
    });
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });

//     // Send a message when the button is pressed
//     stompClient.send(
//       destination: "/app/sendMessage/room1",
//       body:
//           '{"roomId": "room1", "content": "Button pressed $_counter times", "sender": "User1"}',
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
