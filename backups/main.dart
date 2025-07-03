// // import 'dart:developer';

// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:springboot_test_bench/core/constants/app_routes.dart';
// // import 'package:springboot_test_bench/core/constants/app_theme.dart';
// // import 'package:springboot_test_bench/core/routes/generate_routes.dart';
// // import 'package:springboot_test_bench/dependencies/injector.dart';
// // import 'package:springboot_test_bench/presentation/screens/splash/cubit/splash_cubit.dart';
// // import 'package:springboot_test_bench/presentation/theme/cubit/theme_cubit.dart';
// // import 'package:stomp_dart_client/stomp_dart_client.dart';

// // final StompClient stompClient = StompClient(
// //   config: StompConfig.sockJS(
// //     url: 'http://localhost:8080/chat',
// //     onConnect: (StompFrame frame) {
// //       log('✅ Connected to WebSocket');

// //       // Subscribe to messages
// //       stompClient.subscribe(
// //         destination: "/topic/room/room1",
// //         callback: (frame) {
// //           log("📩 Received Message: ${frame.body}");
// //         },
// //       );

// //       // Send a message
// //       stompClient.send(
// //         destination: "/app/sendMessage/12345",
// //         body:
// //             '{"roomId": "12345", "content": "Hello from Flutter", "sender": "User1"}',
// //       );
// //     },
// //     onWebSocketError: (dynamic error) => print('❌ Error: $error'),
// //   ),
// // );

// // void main() async {
// //   //stompClient.activate();
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await initInjectedDependencies();
// //   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
// //     statusBarColor: Colors.transparent,
// //     statusBarIconBrightness: Brightness.dark,
// //     systemNavigationBarColor: Colors.transparent,
// //     systemNavigationBarIconBrightness: Brightness.dark,
// //   ));
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return LayoutBuilder(builder: (context, constraints) {
// //       return ScreenUtilInit(
// //           designSize: Size(constraints.maxWidth, constraints.maxHeight),
// //           builder: (context, child) {
// //             return MultiBlocProvider(
// //               providers: [
// //                 BlocProvider(create: (_) => SplashCubit()..checkAuthStatus())
// //               ],
// //               child: BlocBuilder<ThemeCubit, ThemeState>(
// //                   builder: (context, state) {
// //                 return MaterialApp(
// //                     theme: ThemeData(
// //                       primaryColor: kprimaryColor,
// //                       appBarTheme: AppBarTheme(
// //                         backgroundColor: kprimaryColor,
// //                         titleTextStyle: appbarStyle,
// //                         iconTheme: const IconThemeData(color: kWhiteColor),
// //                       ),
// //                     ),
// //                     debugShowCheckedModeBanner: false,
// //                     onGenerateRoute: GenerateRoutes().onGenerateRoute,
// //                     initialRoute: RoutesConstant.splash);
// //               }),
// //             );
// //           });
// //     });
// //   }
// // }
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:springboot_test_bench/core/constants/app_routes.dart';
// import 'package:springboot_test_bench/core/constants/app_theme.dart';
// import 'package:springboot_test_bench/core/routes/generate_routes.dart';
// import 'package:springboot_test_bench/dependencies/injector.dart';
// import 'package:springboot_test_bench/presentation/screens/splash/cubit/splash_cubit.dart';
// import 'package:springboot_test_bench/presentation/theme/cubit/theme_cubit.dart';
// import 'package:stomp_dart_client/stomp_dart_client.dart';

// final StompClient stompClient = StompClient(
//   config: StompConfig.sockJS(
//     url: 'http://localhost:8080/chat',
//     onConnect: (StompFrame frame) {
//       log('✅ Connected to WebSocket');
//       stompClient.subscribe(
//         destination: "/topic/room/room1",
//         callback: (frame) {
//           log("📩 Received Message: ${frame.body}");
//         },
//       );
//       stompClient.send(
//         destination: "/app/sendMessage/12345",
//         body:
//             '{"roomId": "12345", "content": "Hello from Flutter", "sender": "User1"}',
//       );
//     },
//     onWebSocketError: (dynamic error) => print('❌ Error: $error'),
//   ),
// );

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await initInjectedDependencies();
//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//     statusBarIconBrightness: Brightness.dark,
//     systemNavigationBarColor: Colors.transparent,
//     systemNavigationBarIconBrightness: Brightness.dark,
//   ));
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       return ScreenUtilInit(
//         designSize: Size(constraints.maxWidth, constraints.maxHeight),
//         builder: (context, child) {
//           return MultiBlocProvider(
//             providers: [
//               BlocProvider(create: (_) => SplashCubit()..checkAuthStatus()),
//               BlocProvider(create: (_) => ThemeCubit()), // Add ThemeCubit here
//             ],
//             child: BlocBuilder<ThemeCubit, ThemeState>(
//               builder: (context, state) {
//                 return MaterialApp(
//                   theme: state.lightTheme, // Use light theme from state
//                   darkTheme: state.darkTheme, // Use dark theme from state
//                   themeMode:
//                       state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
//                   debugShowCheckedModeBanner: false,
//                   onGenerateRoute: GenerateRoutes().onGenerateRoute,
//                   initialRoute: RoutesConstant.splash,
//                 );
//               },
//             ),
//           );
//         },
//       );
//     });
//   }
// }
