import 'package:basic/AppBaar.dart';
import 'package:basic/Classes/quote.dart';
import 'package:basic/Classes/quote_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Practice2 extends StatefulWidget {
  const Practice2({Key? key}) : super(key: key);

  @override
  State<Practice2> createState() => _Practice2State();
}

class _Practice2State extends State<Practice2> {
  int t = 0;
  List<Quote> quotes = [
    Quote(author: 'Kum', text: 'Hehe boi xD'),
    Quote(author: 'Raz', text: 'I am a Scientist myself'),
    Quote(author: 'OK', text: 'Kwalski Analysis'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBars(),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}