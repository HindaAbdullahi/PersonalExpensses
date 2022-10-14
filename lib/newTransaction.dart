import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function newtrn;
  NewTransaction(this.newtrn);

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  //const NewTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Item Name'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
          ),
          FlatButton(
            onPressed: () {
              newtrn(
                titleController.text,
                double.parse(amountController.text),
              );
            },
            child: Text(
              'New Transaction',
              style: TextStyle(color: Colors.purple),
            ),
          )
        ],
      ),
    );
  }
}
