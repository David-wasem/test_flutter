import 'package:flutter/material.dart';

class HomeStateful extends StatefulWidget {
  const HomeStateful({super.key});

  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      body: Column(
        children: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$counter',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              IconButton(onPressed: (){
                setState(() {
                  counter=0;
                });
              }, icon: Icon(Icons.refresh,color: Colors.black))
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            icon: Icon(Icons.remove, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
