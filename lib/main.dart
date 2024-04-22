import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme:  ThemeData.dark().copyWith(
        colorScheme: const ColorScheme(
          primary: Color(0xFF0A0E21),
          onPrimary: Colors.white,
          secondary: Colors.purple,
          onSecondary: Colors.white,
          error: Color(0xFF0A0E21),
          onError: Colors.white,
          background: Color(0xFF0A0E21),
          onBackground: Colors.white,
          surface: Color(0xFF0A0E21),
          onSurface: Colors.white,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.purple, // Use secondary for accent
        )
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

