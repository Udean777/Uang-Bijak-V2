import 'package:flutter/material.dart';

class BuildSpendingItem extends StatelessWidget {
  const BuildSpendingItem({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.amountColor,
    this.isHighlighted = false,
  });
  final String title;
  final String date;
  final String amount;
  final Color amountColor;
  final bool isHighlighted;

  @override
  Widget build(BuildContext context) {
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
