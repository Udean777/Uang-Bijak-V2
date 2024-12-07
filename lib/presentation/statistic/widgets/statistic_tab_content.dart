import 'package:flutter/material.dart';
import 'package:uang_bijak/core/widgets/build_spending_list.dart';
import 'package:uang_bijak/presentation/statistic/widgets/chart.dart';

class StatisticTabContent extends StatefulWidget {
  const StatisticTabContent({super.key, required this.datas});

  final List<String> datas;

  @override
  State<StatisticTabContent> createState() => _StatisticTabContentState();
}

class _StatisticTabContentState extends State<StatisticTabContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Chart(datas: widget.datas),
          const BuildSpendingList(),
        ],
      ),
    );
  }
}
