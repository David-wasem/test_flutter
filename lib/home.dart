import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page',
         style: TextStyle(color: Colors.black54,
         fontSize: 30.0,
         fontFamily: "Bungee",)),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(width: 250,
      backgroundColor: Colors.amberAccent,),
      body: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Image(image:  NetworkImage("https://picsum.photos/200"),),
          ),
          Text('Welcome to the Home Page !',style: TextStyle(
            fontSize: 15,fontWeight: FontWeight.bold,)),
          Text("To cantact us, call us at 01277507148",style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.bold)),
          Text("Now debugging is easy with pixel" ,style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.bold),),
          Text("now from Android Studio",style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.all(20.0),
            // child: Image(image: NetworkImage("https://picsum.photos/250")),
            child:  Image.network('https://picsum.photos/250'),
          )
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: Image.asset("assets/images/FlutterIcon.png"),

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        shape: CircularNotchedRectangle(inverted: true),
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
            IconButton(onPressed: (){}, icon: Icon(Icons.timer , color: Colors.white,)),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}