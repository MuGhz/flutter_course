import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final double amount;
  final String name;
  final double total;

  ChartBar(this.name, this.amount, this.total);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('\$${amount.toStringAsFixed(0)}'),
      SizedBox(
        height: 4,
      ),
      Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    color: Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(8)),
              ),
              FractionallySizedBox(
                heightFactor: total,
                child: Container(
                  decoration:
                      BoxDecoration(color: Theme.of(context).primaryColor),
                ),
              ),
              SizedBox(
                height: 4,
              ),
            ],
          )),
      Text(name)
    ]);
  }
}
