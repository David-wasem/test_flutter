import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page',
         style: TextStyle(color: Colors.white,
         fontSize: 30.0)),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.favorite, color: Colors.white),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}