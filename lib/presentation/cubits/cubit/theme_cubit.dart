import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:springboot_test_bench/core/constants/app_theme.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.initial());

  void toggleTheme() {
    emit(state.copyWith(isDarkMode: !state.isDarkMode));
  }
}

final ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: kprimaryColor,
  scaffoldBackgroundColor: kWhiteColor,
  appBarTheme: AppBarTheme(
    backgroundColor: kprimaryColor,
    titleTextStyle: appbarStyle,
    iconTheme: const IconThemeData(color: kWhiteColor),
    elevation: 0,
  ),
  textTheme: TextTheme(
    headlineMedium: headingTextStyle,
    headlineSmall: subHeadingTextStyle,
    bodyMedium: friendTileNameStyle,
    bodySmall: friendTileLastMessageStyle,
    labelMedium: friendTileTimeStyle,
    titleSmall: textfieldPlaceholderStyle,
    titleMedium: hintTextStyle,
    labelSmall: snackbarTextStyle,
  ),
  colorScheme: const ColorScheme.light(
    primary: kprimaryColor,
    secondary: ksecondaryColor,
    error: kDangerColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: kWhiteColor,
    selectedItemColor: kprimaryColor,
    unselectedItemColor: khintTextColor,
  ),
);

final ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kprimaryColor,
  scaffoldBackgroundColor: const Color(0xFF121212),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF1E1E1E),
    titleTextStyle: appbarStyle.copyWith(color: kWhiteColor),
    iconTheme: const IconThemeData(color: kWhiteColor),
    elevation: 0,
  ),
  textTheme: TextTheme(
    headlineMedium: headingTextStyle.copyWith(color: kWhiteColor),
    headlineSmall: subHeadingTextStyle.copyWith(color: kWhiteColor),
    bodyMedium: friendTileNameStyle.copyWith(color: kWhiteColor),
    bodySmall: friendTileLastMessageStyle.copyWith(color: kWhiteColor),
    labelMedium: friendTileTimeStyle.copyWith(color: kWhiteColor),
    titleSmall: textfieldPlaceholderStyle.copyWith(color: kWhiteColor),
    titleMedium: hintTextStyle.copyWith(color: kWhiteColor),
    labelSmall: snackbarTextStyle.copyWith(color: kWhiteColor),
  ),
  colorScheme: const ColorScheme.dark(
    primary: kprimaryColor,
    secondary: ksecondaryColor,
    error: kDangerColor,
    surface: Color(0xFF1E1E1E),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF1E1E1E),
    selectedItemColor: kprimaryColor,
    unselectedItemColor: khintTextColor,
  ),
);
