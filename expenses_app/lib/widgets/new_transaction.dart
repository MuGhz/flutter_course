import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final titleText = titleController.text;
    final amountText = amountController.text.isNotEmpty
        ? double.parse(amountController.text)
        : 0;
    print(titleText + " ---- ${amountText}");
    if (titleText.isEmpty || amountText <= 0) {
      return;
    }
    widget.addTx(titleText, amountText);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: MediaQuery.of(context).viewInsets,
        child: Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  controller: titleController,
                  keyboardType: TextInputType.text,
                  onSubmitted: (_) => submitData(),
                ),
                TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    onSubmitted: (_) => submitData()),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: submitData,
                    child: Text(
                      'Add Transaction',
                      style: TextStyle(color: Colors.amber),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
