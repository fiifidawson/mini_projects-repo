import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;

  const QuoteCard({Key? key, required this.quote, required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: <Widget>[
              Text(quote.text,
                  style: TextStyle(fontSize: 18.0, color: Colors.grey[500])),
              const SizedBox(height: 8.0),
              TextButton.icon(
                  onPressed: delete,
                  label: const Text('Delete Quote'),
                  icon: const Icon(Icons.delete))
            ])));
  }
}
