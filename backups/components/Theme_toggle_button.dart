// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:springboot_test_bench/presentation/theme/cubit/theme_cubit.dart';

// class ThemeToggleTile extends StatefulWidget {
//   const ThemeToggleTile({super.key});

//   @override
//   State<ThemeToggleTile> createState() => _ThemeToggleTileState();
// }

// class _ThemeToggleTileState extends State<ThemeToggleTile>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 400),
//     );
//     _animation = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final themeCubit = context.read<ThemeCubit>();
//     final isDark = Theme.of(context).brightness == Brightness.dark;
//     final iconColor = isDark ? Colors.amber : Colors.blueGrey;

//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 16),
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       decoration: BoxDecoration(
//         color: Theme.of(context).cardColor,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 8,
//             spreadRadius: 1,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Icon(
//                 isDark ? Icons.nightlight_round : Icons.wb_sunny,
//                 color: iconColor,
//               ),
//               const SizedBox(width: 12),
//               Text(
//                 'App Theme',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: Theme.of(context).textTheme.titleMedium?.color,
//                 ),
//               ),
//             ],
//           ),
//           GestureDetector(
//             onTap: () {
//               themeCubit.toggleTheme();
//               if (isDark) {
//                 _controller.reverse();
//               } else {
//                 _controller.forward();
//               }
//             },
//             child: AnimatedBuilder(
//               animation: _animation,
//               builder: (context, child) {
//                 return Transform.scale(
//                   scale: 1.0 + (_animation.value * 0.05),
//                   child: Container(
//                     width: 70, // Smaller width
//                     height: 36, // Smaller height
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       gradient: LinearGradient(
//                         colors: isDark
//                             ? [Colors.blueGrey[700]!, Colors.indigo[800]!]
//                             : [Colors.amber[100]!, Colors.orange[100]!],
//                       ),
//                     ),
//                     child: Stack(
//                       children: [
//                         AnimatedPositioned(
//                           duration: const Duration(milliseconds: 300),
//                           curve: Curves.easeInOut,
//                           left: isDark ? 34 : 4,
//                           top: 3,
//                           child: Container(
//                             width: 30,
//                             height: 30,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: isDark
//                                   ? Colors.blueGrey[300]
//                                   : Colors.amber[300],
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.2),
//                                   blurRadius: 6,
//                                   spreadRadius: 1,
//                                 ),
//                               ],
//                             ),
//                             child: AnimatedSwitcher(
//                               duration: const Duration(milliseconds: 250),
//                               transitionBuilder: (child, animation) {
//                                 return RotationTransition(
//                                   turns: animation,
//                                   child: ScaleTransition(
//                                     scale: animation,
//                                     child: child,
//                                   ),
//                                 );
//                               },
//                               child: Icon(
//                                 isDark ? Icons.dark_mode : Icons.light_mode,
//                                 key: ValueKey<bool>(isDark),
//                                 color:
//                                     isDark ? Colors.white : Colors.orange[800],
//                                 size: 18,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
