import 'package:flutter/material.dart';
import 'package:uang_bijak/presentation/statistic/widgets/statistic_tab_content.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Statistics'),
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
        body: const TabBarView(
          children: [
            StatisticTabContent(), // Konten untuk tab "Day"
            StatisticTabContent(), // Konten untuk tab "Week"
            StatisticTabContent(), // Konten untuk tab "Month"
            StatisticTabContent(), // Konten untuk tab "Year"
          ],
        ),
      ),
    );
  }
}
