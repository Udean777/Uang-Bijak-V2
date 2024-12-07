import 'package:flutter/material.dart';
import 'package:uang_bijak/core/theme/colors.dart';
import 'package:uang_bijak/presentation/home/views/home_screen.dart';
import 'package:uang_bijak/presentation/profile/views/profile_screen.dart';
import 'package:uang_bijak/presentation/statistic/views/statistic_screen.dart';
import 'package:uang_bijak/presentation/wallet/views/wallet_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  late Color selectedItem = AppColors.tertiary2;
  Color unselectedItem = Colors.grey;

  final pages = const [
    HomeScreen(),
    StatisticScreen(),
    WalletScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 0
                    ? "assets/icons/home_filled.png"
                    : "assets/icons/home_outlined.png",
                width: 30,
                height: 30,
                color: selectedIndex == 0
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 1
                    ? "assets/icons/chart_filled.png"
                    : "assets/icons/chart_outlined.png",
                width: 30,
                height: 30,
                color: selectedIndex == 1
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 2
                    ? "assets/icons/wallet_filled.png"
                    : "assets/icons/wallet_outlined.png",
                width: 30,
                height: 30,
                color: selectedIndex == 2
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 3
                    ? "assets/icons/profile_filled.png"
                    : "assets/icons/profile_outlined.png",
                width: 30,
                height: 30,
                color: selectedIndex == 3
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
