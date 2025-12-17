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

      body: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Image.asset('assets/homeImage.avif')
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: Text('Two'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('One'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.yellowAccent,
              child: Text(
                'Three',
                style: TextStyle(
                  color: Colors.blue,
                ),

              ),
            ),
          ),
        ],
      ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     Text('Hello World'),
      //     ElevatedButton(
      //         onPressed: () {
      //           print("You've clicked me");
      //         },
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.blue[600],
      //         foregroundColor: Colors.white,
      //       ),
      //         child: Text('Click Me'),
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30),
      //       child: Text('Inside Container'),
      //     )
      //   ],
      // ),
    );
  }
}
