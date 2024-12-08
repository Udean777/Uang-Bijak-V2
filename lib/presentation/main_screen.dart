import 'package:flutter/material.dart';
import 'package:uang_bijak/presentation/add_expense/views/add_expense.dart';
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

  final pages = [
    const HomeScreen(),
    const StatisticScreen(),
    Container(),
    const WalletScreen(),
    const ProfileScreen()
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
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AddExpense(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 3
                    ? "assets/icons/wallet_filled.png"
                    : "assets/icons/wallet_outlined.png",
                width: 30,
                height: 30,
                color: selectedIndex == 3
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 4
                    ? "assets/icons/profile_filled.png"
                    : "assets/icons/profile_outlined.png",
                width: 30,
                height: 30,
                color: selectedIndex == 4
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
