import 'package:expense_tracker/Widgets/expenses.dart';
import 'package:flutter/material.dart';

var kcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(0, 140, 255, 1),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 9,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
          colorScheme: kcolorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kcolorScheme.onPrimaryContainer,
            foregroundColor: kcolorScheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kcolorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 9,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kcolorScheme.primaryContainer,
              foregroundColor: kcolorScheme.onPrimaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: kcolorScheme.onSecondaryContainer,
                  fontSize: 15,
                ),
              ),
        ),
        // themeMode: ThemeMode.system,
        home: const Expenses()),
  );
}
