import 'package:flutter/material.dart';
import 'package:flutter_expense/widgets/expenses_list/expenses_list.dart';
import 'package:flutter_expense/model/expense.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  State<ExpensesPage> createState() {
    return _ExpensesPageState();
  }
}

class _ExpensesPageState extends State<ExpensesPage> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 13000,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 7000,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Expense Tracker'), actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ]),
        body: Column(
          children: [
            const Text("Expense chart"),
            Expanded(child: ExpensesList(expenses: _registeredExpenses)),
          ],
        ));
  }
}
