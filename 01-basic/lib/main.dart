import 'package:flutter/material.dart';
import '../ui/pages/counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routes App',
      initialRoute: '/stateful',
      routes: {
        '/stateful': (_) => CounterPage()
      },
    );
  }
}
