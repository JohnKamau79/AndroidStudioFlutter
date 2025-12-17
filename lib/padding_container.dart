import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Homepage'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        // padding: EdgeInsets.fromLTRB(20, 20, 50, 50),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        margin: EdgeInsets.all(20),
        color: Colors.green,
        child: Text('Hello'),
      ),
      // body: Padding(
      //     padding: EdgeInsets.all(60),
      //
      //     child: Text('My Text'),
      // ),
    );
  }
}
