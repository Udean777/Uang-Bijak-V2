import 'package:flutter/material.dart';
import 'package:uang_bijak/core/theme/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  late Color selectedItem = AppColors.primary;
  Color unselectedItem = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
