import 'package:expenses_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((e) => ExpenseItem(transaction: e)).toList(),
    );
  }
}
