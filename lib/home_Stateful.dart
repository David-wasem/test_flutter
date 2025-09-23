import 'package:flutter/material.dart';

class HomeStateful extends StatefulWidget {
  const HomeStateful({super.key});

  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  int counter = 0;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.wb_sunny_outlined, color: Colors.black),
                onPressed: () {
                  setState(() {
                    isPressed = true;
                  });
                },
              ),
              Icon(
                (isPressed) ? Icons.star : Icons.star_border,
                color: Colors.amber,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    isPressed = false;
                  });
                },
                icon: Icon(Icons.nightlight_outlined, color: Colors.black),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.add, color: Colors.black),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              Text(
                "$counter",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
        ],
      ),
    );
  }
}
