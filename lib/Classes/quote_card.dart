import 'package:basic/Classes/quote.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16,16, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(child: Text(quote.text, style: TextStyle(fontSize: 16, color: Colors.blueAccent))),
            SizedBox(height: 10.0,),
            Center(child: Text(quote.author, style: TextStyle(fontSize: 16, color: Colors.green))),
            SizedBox(height: 10.0,),
            FlatButton.icon(onPressed: (){
              delete();
            }, icon: Icon(Icons.delete), label: Text("Delete"))
          ],
        ),
      ),
    );
  }
}