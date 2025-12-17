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
      body: Center(
        child: IconButton(
          onPressed: () {
            print('Icon pressed!');
          },
          icon: Icon(Icons.settings),
          style: IconButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
            iconSize: 50,
          ),
        ),
        // child: OutlinedButton.icon(
        //     onPressed: () {},
        //     icon: Icon(Icons.mail),
        //     label: Text('Email'),
        //     style: OutlinedButton.styleFrom(
        //       foregroundColor: Colors.white,
        //       backgroundColor: Colors.blueAccent,
        //     ),
        // ),
        // child: ElevatedButton(
        //     onPressed: () {
        //       print("You clicked me!");
        //     },
        //     child: Text('Click Me'),
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: Colors.blue[500],
        //       foregroundColor: Colors.white,
        //     ),
        // ),
        // child: Icon(
        //   Icons.one_x_mobiledata,
        //   color: Colors.red[700],
        //   size: 200,
        // ),
        // child: Image.asset('assets/homeImage.avif'),
        // child: Image.network('https://images.unsplash.com/photo-1765572045667-7f00f4b299ff?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw1fHx8ZW58MHx8fHx8'),
        // child: Image(
        //   // image: NetworkImage('https://images.unsplash.com/photo-1765572045667-7f00f4b299ff?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw1fHx8ZW58MHx8fHx8'),
        //   // image: AssetImage('assets/homeImage.avif'),
        // ),
        // child: Text(
        //   'Centered text',
        //   style: TextStyle(
        //     color: Colors.red[600],
        //     fontSize: 34.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2,
        //     fontFamily: 'IndieFlower',
        //
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => {'click'},
        child: Text('+'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
