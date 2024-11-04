import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Currency Converter"),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/next");
                      },
                      child: Text("Next Page")),
                  color: Colors.red,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Text("blue"),
                  color: Colors.blue,
                )),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: Text("green"),
                      color: Colors.green,
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("yellow"),
                              color: Colors.yellow,
                            )),
                        Expanded(
                            flex: 7,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("grey"),
                              color: Colors.grey,
                            ))
                      ],
                    ))
                  ],
                )),
          ],
        ));
  }
}
