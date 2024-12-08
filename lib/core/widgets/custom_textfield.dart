import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(width: 2.0),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
