import 'package:flutter/material.dart';
import 'package:uang_bijak/core/widgets/build_spending_item.dart';

class BuildSpendingList extends StatelessWidget {
  const BuildSpendingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          BuildSpendingItem(
            title: 'Starbucks',
            date: 'Jan 12, 2022',
            amount: '- Rp 100.000',
            amountColor: Colors.red,
          ),
          BuildSpendingItem(
            title: 'Transfer',
            date: 'Yesterday',
            amount: '- Rp 85.000',
            amountColor: Colors.green,
          ),
          BuildSpendingItem(
            title: 'YouTube',
            date: 'Jan 16, 2022',
            amount: '- Rp 110.999',
            amountColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
