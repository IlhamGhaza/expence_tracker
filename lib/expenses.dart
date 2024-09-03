import 'package:expence_tracker/widgets/expenses_list/new_expense.dart';
import 'package:flutter/material.dart';

import 'models/expense.dart';
import 'widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerExpenses = [
    Expense(
        title: 'Groceries',
        amount: 50.00,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Gas',
        amount: 100.00,
        date: DateTime.now(),
        category: Category.travel),
  ];

  void _openAddexpensOverlaay() {
    showModalBottomSheet(context: context, builder: (ctx)=>
    // Text('Add expense')
    NewExpense()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expenses App'),
          actions: [
            IconButton(
              onPressed: _openAddexpensOverlaay,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: Column(
          children: [
            Text('The chart'),
            ExpensesList(expenses: _registerExpenses),
            Text('Expenses list'),
          ],
        ));
  }
}
