import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class ExpenseItem extends StatelessWidget {
  Transaction transaction;
  Function deleteTx;
  ExpenseItem({@required this.transaction, this.deleteTx});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
              padding: EdgeInsets.all(4),
              child: FittedBox(child: Text('\$${transaction.amount}'))),
        ),
        title: Text(transaction.title),
        subtitle: Text(DateFormat.yMMMd().format(transaction.time)),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          color: Colors.red,
          onPressed: () => deleteTx(transaction.id),
        ),
      ),
    );
  }
}
