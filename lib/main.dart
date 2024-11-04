import 'package:flutter/material.dart';

import 'pages/counter.page.dart';
import 'pages/currency.page.dart';
import 'pages/next.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      "/": (context) => Currency(),
      "/next": (context) => Next(),
    });
  }
}
