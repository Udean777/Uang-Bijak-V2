import 'package:flutter/material.dart';
import 'package:uang_bijak/presentation/statistic/widgets/statistic_tab_content.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> months = ['Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug'];
    final List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    final List<String> weeks = [
      '1 Week',
      '2 Week',
      '3 Week',
      '4 Week',
      '5 Week',
      '6 Week'
    ];
    final List<String> years = ['2019', '2020', '2021', '2022', '2023', '2024'];

    return DefaultTabController(
      length: 4, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Statistics',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.share_outlined),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Theme.of(context).colorScheme.primary,
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(text: 'Day'),
              Tab(text: 'Week'),
              Tab(text: 'Month'),
              Tab(text: 'Year'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            StatisticTabContent(
              datas: days,
            ), // Konten untuk tab "Day"
            StatisticTabContent(
              datas: weeks,
            ), // Konten untuk tab "Week"
            StatisticTabContent(
              datas: months,
            ), // Konten untuk tab "Month"
            StatisticTabContent(
              datas: years,
            ), // Konten untuk tab "Year"
          ],
        ),
      ),
    );
  }
}
