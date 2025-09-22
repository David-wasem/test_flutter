import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page 5',
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
          Text('Welcome to the Home Page !'),
          Text("To cantact us, call us at 01277507148"),
          Text("Now debugging is easy with pixel" ),
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.favorite, color: Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the icons
          children: [
            IconButton(
              icon: const Icon(Icons.add, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.remove, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.refresh, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}