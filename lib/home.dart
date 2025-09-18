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
      drawer: Drawer(width: 250,
      backgroundColor: Color.fromARGB(255, 181, 138, 255),),
      body: const Center(
        child: Column(children: [
          Image(image:  NetworkImage("https://img.freepik.com/free-vector/mobile-browsers-concept-illustration_114360-1267.jpg"),
          height: 300,
          width: 400,),
          Text('Welcome to the Home Page!'),
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.favorite, color: Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: IconButton(
          icon: const Icon(Icons.add, color: Colors.white),
          onPressed: () {},
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}