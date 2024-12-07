import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uang_bijak/presentation/home/widgets/card_balance.dart';
import 'package:uang_bijak/presentation/home/widgets/home_header.dart';
import 'package:uang_bijak/presentation/home/widgets/transaction_item.dart';

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
              Column(
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
                  TransactionItem(
                    icon: CupertinoIcons.film,
                    title: "Tiket Bioskop",
                    subtitle: "Purchased movie ticket for 2 people",
                    amount: "Rp 100.000",
                    amountColor: Colors.red,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  TransactionItem(
                    icon: CupertinoIcons.heart_circle_fill,
                    title: "Pengecekan Kesehatan Rutin",
                    subtitle: "Pengecekan rutin ke puskesmas",
                    amount: "Rp 150.000",
                    amountColor: Colors.red,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  TransactionItem(
                    icon: CupertinoIcons.film,
                    title: "Tiket Bioskop",
                    subtitle: "Purchased movie ticket for 2 people",
                    amount: "Rp 100.000",
                    amountColor: Colors.red,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
