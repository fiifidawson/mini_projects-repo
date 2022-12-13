import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
      debugShowCheckedModeBanner: false,
    ));

//Stateful Widget
//stful

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: '~Baba Tunde',
        text: '"A hungry man is a sad man, a full man is a happy man"'),
    Quote(
        author: '~Omar Dollars',
        text: '"The greatest love story is that of gari and beans"'),
    Quote(
        author: '~Sir Frederick Dickenson',
        text: '"Sleep is gold, sleep doesn\'t criticize you"')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        title: const Text('Badass Quotes'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: (() {
                  setState(() {
                    quotes.remove(quote);
                  });
                })))
            .toList(),
      ),
    );
  }
}
