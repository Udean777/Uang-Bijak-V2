import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticTabContent extends StatefulWidget {
  const StatisticTabContent({super.key, required this.datas});

  final List<String> datas;

  @override
  State<StatisticTabContent> createState() => _StatisticTabContentState();
}

class _StatisticTabContentState extends State<StatisticTabContent> {
  String selectedDropdown = "Expense";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildChartSection(context, widget.datas),
          _buildTopSpendingList(context),
        ],
      ),
    );
  }

  Widget _buildChartSection(BuildContext context, List<String> datas) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Rp 1.230.000',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              DropdownButton<String>(
                value: selectedDropdown,
                items: ['Expense', 'Income']
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedDropdown = value!;
                  });
                },
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
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        if (value.toInt() >= 0 &&
                            value.toInt() < datas.length) {
                          return Text(
                            datas[value.toInt()],
                            style: const TextStyle(fontSize: 12),
                          );
                        }
                        return const Text('');
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
            '- Rp 100.000',
            Colors.red,
            context,
          ),
          _buildSpendingItem(
              'Transfer',
              'Yesterday',
              '- Rp 85.000',
              Colors.green,
              isHighlighted: true,
              context),
          _buildSpendingItem(
            'YouTube',
            'Jan 16, 2022',
            '- Rp 110.999',
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
        color: isHighlighted
            ? Theme.of(context).colorScheme.tertiary
            : Colors.white,
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
}
