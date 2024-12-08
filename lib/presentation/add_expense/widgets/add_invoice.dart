import 'package:flutter/material.dart';

class AddInvoiceButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddInvoiceButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "INVOICE",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey, // Warna garis putus-putus
                width: 1.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.grey,
                ),
                SizedBox(width: 8.0),
                Text(
                  "Add Invoice",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
