import 'package:expenses_app/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'MyExpenses', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: '1',
        title: 'Food and Drinks',
        amount: 10000.0,
        time: DateTime.now()),
    Transaction(id: '2', title: 'Books', amount: 45000.0, time: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyExpenses'),
      ),
      body: Column(children: <Widget>[
        Card(
          elevation: 5,
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: Text(
                      'Add Transaction',
                      style: TextStyle(color: Colors.amber),
                    ))
              ],
            ),
          ),
        ),
        Column(
          children: transactions
              .map((item) => ExpenseItem(
                    transaction: item,
                  ))
              .toList(),
        )
      ]),
    );
  }
}

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
