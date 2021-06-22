import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final double amount;
  final String name;
  final double total;

  ChartBar(this.name, this.amount, this.total);

  @override
  Widget build(BuildContext context) {
    print('name $name amount $amount total $total');
    return Column(children: <Widget>[
      Container(
          height: 20,
          child: FittedBox(child: Text('\$${amount.toStringAsFixed(0)}'))),
      SizedBox(
        height: 4,
      ),
      Container(
          height: 56,
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
              Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                  heightFactor: total,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(8)),
                  ),
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
