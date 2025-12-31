import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  String _currentFortune="";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentFortune="";

  final _fortuneList = [
    "Lorem ipsum dolor sit amet, panda",
    "Lorem ipsum dolor sit amet, kuli.",
  ];
  void _randomFourtune(){
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);
    _currentFortune = _fortuneList[fortune];
    setState(() {
      _currentFortune = _currentFortune;
    });

  }


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Your furten is ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    '${_currentFortune}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _randomFourtune,
                child: Text('Generate Fortune'),
              ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFourtune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
