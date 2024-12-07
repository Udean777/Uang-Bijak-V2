import 'package:flutter/material.dart';

class RowMenu extends StatelessWidget {
  const RowMenu({
    super.key,
    required this.title,
    this.subTitle,
    required this.icon,
  });
  final String title;
  final String? subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to destinated screens
      },
      child: Row(
        children: [
          Icon(
            icon,
            size: 40,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (subTitle != null)
                  Text(
                    subTitle!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
