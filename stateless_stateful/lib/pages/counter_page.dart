import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  //  variable
  int _counter = 0;


  //method
  void _incrementCounter(){
    // setState rebuilds the widget
    setState(() {
      _counter++;
    });

  }


  //ui {user interface}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You pushed the button this any times: "),

            //counter value
            Text(_counter.toString(),
            style: TextStyle(fontSize: 45,),),

            //button
            ElevatedButton(
                onPressed: _incrementCounter,
                child: Text("increment"),),

          ],
        ),
      ),
    );
  }
}
