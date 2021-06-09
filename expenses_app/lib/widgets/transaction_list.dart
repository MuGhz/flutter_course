import 'package:expenses_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return ExpenseItem(transaction: transactions[index]);
        },
        itemCount: transactions.length,
      ),
    );
  }
}
