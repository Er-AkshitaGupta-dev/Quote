import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: Quote(),
  ));
}

class Quote extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  List<QuoteInfo> quotes = [
    QuoteInfo(author: 'Akshita', text: 'Be Happy'),
    QuoteInfo(author: 'Ashesh', text: 'Be Happy'),
    QuoteInfo(author: 'Wachas', text: 'Be Happy'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.pink[800],
        elevation: 0.0,
      ),
      body: Column(
        children: quotes
            .map((q) => QuoteCard(
                q: q,
                delete: () {
                  setState(() {
                    quotes.remove(q);
                  });
                }))
            .toList(),
      ),
    );
  }
}
