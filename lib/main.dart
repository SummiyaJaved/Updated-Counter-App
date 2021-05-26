import 'dart:ffi';


import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );

  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
backgroundColor: Colors.black54,

      appBar: AppBar(
        title: Center(child: Text(
          'My Counter App'
        ),
        ),
      ),



        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add,color: Colors.red, size: 24),
                onPressed: (){
                  counter--;
                  print('Counter value:$counter');
                  setState(() {});
                  SizedBox(
                      height: 10,
                  );
                },


            ),

            // another floating action button is created


            FloatingActionButton(
              child: Icon(Icons.add,color: Colors.black,),
              onPressed: (){
                counter++;
                print('Counter value:$counter');


                setState(() {});
              },


            ),
          ],

        ),




      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
                'You have pushed the button this many times:',
              style: TextStyle(fontWeight: FontWeight.bold, color:Colors.pink, fontSize: 17),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color:Colors.yellow),
            ),
          ]

        ),

      ),
    ),
    );
  }
}


















