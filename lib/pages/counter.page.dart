import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build start");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: myCounter(context),
      ),
    );
  }

  Widget myCounter(BuildContext context) {
    return StatefulBuilder(builder: (BuildContext context, setstt) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                setstt(() {
                  counter--;
                  print(counter);
                });
              },
              icon: Icon(
                Icons.remove,
                size: 30,
              )),
          Text("$counter"),
          IconButton(
              onPressed: () {
                setstt(() {
                  counter++;
                  print(counter);
                });
              },
              icon: Icon(
                Icons.add,
                size: 30,
              )),
        ],
      );
    });
  }
}
