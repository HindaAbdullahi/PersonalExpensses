import 'transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  //const TransactionList({Key? key}) : super(key: key);
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.purple, style: BorderStyle.solid),
                    //  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(
                    '\$ ${transactions[index].amount}',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.normal,
                          fontSize: 18),
                    ),
                    Text(
                      DateFormat.yMMMMd().format(transactions[index].date),
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
