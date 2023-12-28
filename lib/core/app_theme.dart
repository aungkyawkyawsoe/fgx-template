import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Rubik',
  dividerTheme: const DividerThemeData(color: Colors.black45),
  navigationDrawerTheme: NavigationDrawerThemeData(
    indicatorColor: Colors.deepPurple.shade100,
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.amber,
    foregroundColor: Colors.black,
  ),
  fontFamilyFallback: const ['Pyidaungsu'],
  colorScheme: const ColorScheme.light(
    primary: Colors.deepPurple,
    brightness: Brightness.light,
  ),
  cardColor: Colors.blueGrey.shade50,
  cardTheme: const CardTheme(
    surfaceTintColor: Colors.blueGrey,
  ),
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Rubik',
  scaffoldBackgroundColor: Colors.grey.shade900,
  dividerColor: Colors.white54,
  dividerTheme: const DividerThemeData(
    color: Colors.white54,
  ),
  cardColor: Colors.black,
  cardTheme: const CardTheme(
    surfaceTintColor: Colors.blueGrey,
  ),
  navigationDrawerTheme: const NavigationDrawerThemeData(
    indicatorColor: Colors.amber,
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.amber,
    foregroundColor: Colors.black,
  ),
  fontFamilyFallback: const ['Pyidaungsu'],
  colorScheme: const ColorScheme.dark(
      primary: Colors.amber,
      brightness: Brightness.dark,
      background: Colors.black12),
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
