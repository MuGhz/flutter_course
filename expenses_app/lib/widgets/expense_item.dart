import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class ExpenseItem extends StatelessWidget {
  Transaction transaction;
  ExpenseItem({@required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.amber,
                width: 1.0,
              ),
            ),
            child: Text(transaction.amount.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.amber)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                transaction.title,
                style: TextStyle(fontSize: 18),
              ),
              Text(
                DateFormat('dd-MM-yyyy').format(transaction.time),
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}