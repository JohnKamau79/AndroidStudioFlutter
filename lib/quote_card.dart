import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard  extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  const QuoteCard({ required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
    margin: const EdgeInsets.fromLTRB(16, 16, 16, 10),
    child: Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Text(
    quote.text,
    style: TextStyle(
    color: Colors.grey[600],
    fontSize: 18.0,
    ),
    ),
    SizedBox(
    height: 6.0,
    ),
    Text(
    quote.author,
    style: TextStyle(
    color: Colors.grey[900],
    fontSize: 16.0,
    ),
    ),
      SizedBox(
        height: 8.0,
      ),
      ElevatedButton.icon(
          onPressed: delete,
          icon: Icon(Icons.delete),
          label: Text('Delete quote'))
    ],
    ),

    ),

    );
  }
}