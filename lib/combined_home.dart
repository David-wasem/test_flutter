import 'package:flutter/material.dart';

class HomeCombined extends StatefulWidget {
  const HomeCombined({super.key});

  @override
  State<HomeCombined> createState() => _HomeCombinedState();
}

class _HomeCombinedState extends State<HomeCombined> {
  int counter = 0;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 30.0,
            fontFamily: "Bungee",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: const Drawer(width: 250, backgroundColor: Colors.amberAccent),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.network("https://picsum.photos/200"),
              ),
              Text(
                'Welcome to the Home Page!',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "To contact us, call us at 01277507148",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Now debugging is easy with pixel",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const Text(
                "now from Android Studio",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.network('https://picsum.photos/250'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.wb_sunny_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                        });
                      },
                    ),
                    Icon(
                      isPressed ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.nightlight_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          isPressed = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,30,0,80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add, color: Colors.black),
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                    ),
                    Text(
                      "$counter",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove, color: Colors.black),
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: Image.asset("assets/images/FlutterIcon.png"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        shape: const CircularNotchedRectangle(inverted: true),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.add, color: Colors.white),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.remove, color: Colors.white),
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.refresh, color: Colors.white),
              onPressed: () {
                setState(() {
                  counter = 0;
                  isPressed = false;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.timer, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
