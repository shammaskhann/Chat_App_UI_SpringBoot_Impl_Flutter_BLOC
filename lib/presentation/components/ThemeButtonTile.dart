import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:springboot_test_bench/main.dart';
import 'package:springboot_test_bench/presentation/cubits/cubit/theme_cubit.dart';

class ThemeButtonTile extends StatefulWidget {
  const ThemeButtonTile({super.key});

  @override
  State<ThemeButtonTile> createState() => _ThemeButtonTileState();
}

class _ThemeButtonTileState extends State<ThemeButtonTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final iconColor = isDark ? Colors.amber : Colors.blueGrey;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 1,
                offset: const Offset(0, 2))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(isDark ? Icons.nightlight_rounded : Icons.wb_sunny,
                  color: iconColor),
              const SizedBox(
                width: 12,
              ),
              Text("App Theme", style: Theme.of(context).textTheme.labelMedium),
            ],
          ),
          //Switch Button
          GestureDetector(
              onTap: () {
                themeCubit.toggleTheme();
                if (isDark) {
                  _controller.reverse();
                } else {
                  _controller.forward();
                }
              },
              child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: 1.0 + (_animation.value * 0.05),
                      child: Container(
                        width: 70,
                        height: 36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: isDark
                                    ? [
                                        Colors.blueGrey[700]!,
                                        Colors.indigo[800]!
                                      ]
                                    : [
                                        Colors.amber[100]!,
                                        Colors.orange[100]!
                                      ])),
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                              curve: Curves.easeInOut,
                              left: isDark ? 34 : 4,
                              top: 3,
                              duration: const Duration(milliseconds: 300),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isDark
                                        ? Colors.blueGrey[300]
                                        : Colors.amber[300],
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 6,
                                          spreadRadius: 1)
                                    ]),
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 200),
                                  transitionBuilder: (child, animation) {
                                    return RotationTransition(
                                      turns: animation,
                                      child: ScaleTransition(
                                        scale: animation,
                                        child: child,
                                      ),
                                    );
                                  },
                                  child: Icon(
                                      isDark
                                          ? Icons.dark_mode
                                          : Icons.light_mode,
                                      key: ValueKey<bool>(isDark),
                                      color: isDark
                                          ? Colors.white
                                          : Colors.orange[800],
                                      size: 18),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
