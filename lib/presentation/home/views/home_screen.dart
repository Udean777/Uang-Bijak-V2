import 'package:flutter/material.dart';
import 'package:uang_bijak/core/widgets/build_spending_item.dart';
import 'package:uang_bijak/presentation/home/widgets/card_balance.dart';
import 'package:uang_bijak/presentation/home/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderHome(),
              SizedBox(
                height: 20.0,
              ),
              CardBalance(),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions History",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    BuildSpendingItem(
                      title: 'Starbucks',
                      date: 'Jan 12, 2022',
                      amount: '- Rp 100.000',
                      amountColor: Colors.red,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    BuildSpendingItem(
                      title: 'Transfer',
                      date: 'Yesterday',
                      amount: '- Rp 85.000',
                      amountColor: Colors.green,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    BuildSpendingItem(
                      title: 'YouTube',
                      date: 'Jan 16, 2022',
                      amount: '- Rp 110.999',
                      amountColor: Colors.red,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
