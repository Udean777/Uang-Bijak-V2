import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticTabContent extends StatelessWidget {
  const StatisticTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildChartSection(context),
        _buildTopSpendingList(context),
      ],
    );
  }
}

Widget _buildChartSection(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '\$1,230',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: 'Expense',
              items: ['Expense', 'Income']
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    ),
                  )
                  .toList(),
              onChanged: (value) {},
            ),
          ],
        ),
        const SizedBox(height: 16),
        AspectRatio(
          aspectRatio: 2,
          child: LineChart(
            LineChartData(
              gridData: const FlGridData(show: false),
              titlesData: FlTitlesData(
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      switch (value.toInt()) {
                        case 0:
                          return const Text('Mar',
                              style: TextStyle(fontSize: 12));
                        case 1:
                          return const Text('Apr',
                              style: TextStyle(fontSize: 12));
                        case 2:
                          return const Text('May',
                              style: TextStyle(fontSize: 12));
                        case 3:
                          return const Text('Jun',
                              style: TextStyle(fontSize: 12));
                        case 4:
                          return const Text('Jul',
                              style: TextStyle(fontSize: 12));
                        case 5:
                          return const Text('Aug',
                              style: TextStyle(fontSize: 12));
                        default:
                          return const Text('');
                      }
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(0, 1),
                    const FlSpot(1, 3),
                    const FlSpot(2, 1.5),
                    const FlSpot(3, 2),
                    const FlSpot(4, 3.5),
                    const FlSpot(5, 2.5),
                  ],
                  isCurved: true,
                  color: Theme.of(context).colorScheme.primary,
                  barWidth: 4,
                  dotData: const FlDotData(show: true),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildTopSpendingList(BuildContext context) {
  return Expanded(
    child: ListView(
      children: [
        _buildSpendingItem(
          'Starbucks',
          'Jan 12, 2022',
          '- \$150.00',
          Colors.red,
          context,
        ),
        _buildSpendingItem(
            'Transfer',
            'Yesterday',
            '- \$85.00',
            Colors.green,
            isHighlighted: true,
            context),
        _buildSpendingItem(
          'YouTube',
          'Jan 16, 2022',
          '- \$11.99',
          Colors.red,
          context,
        ),
      ],
    ),
  );
}

Widget _buildSpendingItem(String title, String date, String amount,
    Color amountColor, BuildContext context,
    {bool isHighlighted = false}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color:
          isHighlighted ? Theme.of(context).colorScheme.tertiary : Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        if (isHighlighted)
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              date,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Text(
          amount,
          style: TextStyle(color: amountColor, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
