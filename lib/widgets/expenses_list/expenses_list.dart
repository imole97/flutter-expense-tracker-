import 'package:flutter/material.dart';
import 'package:flutter_expense/model/expense.dart';
import 'package:flutter_expense/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});
  final List<Expense> expenses;
  final void Function(Expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    /**listview  widget makes its children scrollable. using it with the builder constructor tells 
     flutter to only create the child item when they are visible on the screen.
     * In this case, we're creating a Text widget for each expense title.
     * The itemBuilder function is called for each item in the list, and it returns a Widget.
     * The itemCount is the number of items in the list.
     * The Text widget displays the expense title.
     
     **/
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        onDismissed:(direction){
          onRemoveExpense(expenses[index]);
        },
        key: ValueKey(expenses[index]),
        child: ExpenseItem(expense: expenses[index]),
      ),
    );
  }
}
