import 'package:flutter/material.dart';
import 'package:uang_bijak/core/widgets/custom_button.dart';
import 'package:uang_bijak/core/widgets/custom_datetime_field.dart';
import 'package:uang_bijak/core/widgets/custom_textfield.dart';
import 'package:uang_bijak/presentation/add_expense/widgets/add_invoice.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
            size: 40,
          ),
        ),
        title: const Text(
          "Add Expense",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 2,
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextField(
                        labelText: "Name",
                        hintText: "Name of the expense...",
                      ),
                      const CustomTextField(
                        labelText: "Amount",
                        hintText: "Enter the amount...",
                      ),
                      const CustomDateTimeField(
                        labelText: "Date",
                      ),
                      AddInvoiceButton(
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      CustomButton(
                        text: "Add Expense",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
