import 'package:basic/router/router-generator.dart';
import 'package:flutter/material.dart';
import '../ui/pages/counter_page.dart';
import '../ui/pages/counter_provider_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routes App',
      initialRoute: '/stateful',
      // routes: {
      //   '/stateful': ( _ ) => CounterPage(),
      //   '/provider': ( _ ) => CounterProviderPage(),
      // },
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
