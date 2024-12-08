import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateTimeField extends StatefulWidget {
  final String labelText;

  const CustomDateTimeField({
    super.key,
    required this.labelText,
  });

  @override
  State<CustomDateTimeField> createState() => _CustomDateTimeFieldState();
}

class _CustomDateTimeFieldState extends State<CustomDateTimeField> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () => _selectDate(context),
          child: AbsorbPointer(
            child: TextField(
              controller: TextEditingController(
                text: DateFormat("dd/MM/yyyy").format(selectedDate),
              ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.0),
                ),
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
