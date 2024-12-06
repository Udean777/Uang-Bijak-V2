import 'package:flutter/material.dart';
import 'package:uang_bijak/core/theme/colors.dart';
import 'package:uang_bijak/presentation/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade100,
          onSurface: AppColors.tertiary2,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          tertiary: AppColors.tertiary1,
          outline: Colors.grey,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
