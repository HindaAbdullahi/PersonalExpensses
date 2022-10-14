import 'transaction.dart';
import 'transactionList.dart';
import 'package:flutter/material.dart';
import 'newTransaction.dart';

class usertransaction extends StatefulWidget {
  // const usertransaction({Key? key}) : super(key: key);

  @override
  _usertransactionState createState() => _usertransactionState();
}

class _usertransactionState extends State<usertransaction> {
  final List<Transaction> _usertransactions = [
    Transaction(
      id: 'I1',
      title: 'Perfume',
      amount: 20.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'I2',
      title: 'Not book',
      amount: 4.5,
      date: DateTime.now(),
    ),
  ];
  // Adding new transactions
  void _newTransaction(String trnTitle, double trnAmount) {
    final newTran = Transaction(
      title: trnTitle,
      amount: trnAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _usertransactions.add(newTran);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_newTransaction),
        TransactionList(_usertransactions)
      ],
    );
  }
}
