import 'package:expenses_app/transaction.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            transactions.map((item) => Card(child: Text(item.title))).toList(),
      ),
    );
  }
}
