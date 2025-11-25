import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> registeredExpenses;
  final void Function(Expense expense) onRemoveExpense;

  const ExpenseList({
    super.key,
    required this.registeredExpenses,
    required this.onRemoveExpense,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: registeredExpenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        direction: DismissDirection.endToStart,
        background: Container(
          color: Colors.redAccent,
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 40),
          child: Icon(Icons.delete, color: Colors.white),
        ),
        key: ValueKey(registeredExpenses[index]),
        child: ExpenseItem(exp: registeredExpenses[index]),
        onDismissed: (direction) {
          onRemoveExpense(registeredExpenses[index]);
        },
      ),
    );
  }
}


//ExpenseItem(exp: registeredExpenses[index]),