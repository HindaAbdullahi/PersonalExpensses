import 'package:flutter/material.dart';
import 'UserTransaction.dart';
import 'transaction.dart';
import 'newTransaction.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp((new MaterialApp(home: PersonalExpenses())));
}

class PersonalExpenses extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  //const PersonalExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal expenses"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.green,
                elevation: 6,
                child: Text('CHARTS'),
              ),
            ),

            usertransaction()
            //The main part for calcualtion
          ],
        ),
      ),
    );
  }
}

class UserTransaction {}
