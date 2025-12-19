import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> qoutes = [
    Quote(text: 'Discipline is choosing what you want most over what you want now.', author: 'John'),
    Quote(text: 'You don’t rise to the level of your goals; you fall to the level of your systems.', author: 'Jimmy'),
    Quote(text: 'Small progress every day adds up to massive results.', author: 'Joyce'),
    Quote(text: 'Consistency beats motivation when motivation fades.', author: 'Kush'),
    Quote(text: 'Be so focused on building yourself that distractions lose their power.', author: 'Naomi'),
    Quote(text: 'Discipline is choosing what you want most over what you want now.', author: 'John'),
    Quote(text: 'You don’t rise to the level of your goals; you fall to the level of your systems.', author: 'Jimmy'),
    Quote(text: 'Small progress every day adds up to massive results.', author: 'Joyce'),
    Quote(text: 'Consistency beats motivation when motivation fades.', author: 'Kush'),
    Quote(text: 'Be so focused on building yourself that distractions lose their power.', author: 'Naomi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
            'Awesome Quotes',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: qoutes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                qoutes.remove(quote);
              });
            }
        )).toList(),
        // children: qoutes.map((quote) => Text(quote)).toList(),
        // children:
        // qoutes.map((quote) {
        //   return Text(
        //     '${quote.text}   _ ${quote.author}',
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontSize: 17.0,
        //       height: 2.0,
        //     ),
        //   );
        // }).toList(),
      ),
      ),
    );
  }
}

