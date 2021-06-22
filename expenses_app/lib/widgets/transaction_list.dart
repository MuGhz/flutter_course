import 'package:expenses_app/widgets/chart.dart';
import 'package:expenses_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  Function deleteTx;
  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.only(top: 40),
      child: transactions.isEmpty
          ? Column(
              children: [
                Text('no transaction'),
                SizedBox(
                  height: 24,
                ),
                FittedBox(
                  child: Image.network(
                    'https://image.flaticon.com/icons/png/512/401/401176.png',
                    fit: BoxFit.fill,
                    height: 56,
                    width: 56,
                  ),
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return ExpenseItem(
                  transaction: transactions[index],
                  deleteTx: deleteTx,
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
