import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:springboot_test_bench/presentation/screens/dashboard/cubit/dashboard_cubit_cubit.dart';
import 'package:springboot_test_bench/presentation/screens/home/home_screen.dart';
import 'package:springboot_test_bench/presentation/screens/search_friends/search_friends_screen.dart';
import 'package:springboot_test_bench/presentation/screens/settings/setting_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: const _DashboardView(),
    );
  }
}

class _DashboardView extends StatelessWidget {
  const _DashboardView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DashboardCubit, DashboardCubitState>(
        builder: (context, state) {
          // Return different screens based on the selected index
          switch (state.selectedIndex) {
            case 0:
              return const HomeScreen();
            case 1:
              return const SearchFriendsScreen();
            case 2:
              return const SettingScreen();
            default:
              return const HomeScreen();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<DashboardCubit, DashboardCubitState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: Colors.black,
                  iconSize: 24,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey[100]!,
                  color: Colors.black,
                  tabs: const [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: LineIcons.userFriends,
                      text: 'Friends',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: state.selectedIndex,
                  onTabChange: (index) {
                    context.read<DashboardCubit>().changeTab(index);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
