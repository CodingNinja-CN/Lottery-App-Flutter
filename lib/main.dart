import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random x=Random();
  int randomInt = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Lottery App",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )),
            backgroundColor: Colors.blueAccent,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Lottery Winning number is 4.",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            randomInt == 4 ? Icons.done_outline_rounded : Icons.warning,
                            color: randomInt == 4 ? Colors.green : Colors.red,
                            size: 40,
                          ),
                          SizedBox(height: 20,),
                          Text(randomInt == 4 ?"You Won! Your number is $randomInt." : "You Lost! Your number is $randomInt." ,style: TextStyle(fontSize: 17),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                randomInt=x.nextInt(6);
              });
            },
            child: Icon(Icons.refresh),
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
