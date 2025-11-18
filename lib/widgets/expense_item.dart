import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final Expense exp;

  const ExpenseItem({super.key, required this.exp});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Column(
          children: [
            Text(exp.title),

            Row(
              children: [
                Text('€${exp.amount.toStringAsFixed(2)}'),
                Spacer(),
                Icon(categoryIcons[exp.category]),
                SizedBox(width: 10),
                Text(exp.formattedDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
