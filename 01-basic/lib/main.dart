import 'package:flutter/material.dart';

import 'package:basic/locator.dart';
import 'package:basic/router/router.dart';
import 'package:basic/services/navigation_service.dart';

// import 'package:basic/router/route-generator.dart';
import 'package:basic/ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routes App',
      initialRoute: '/',
      // routes: {
      //   '/stateful': ( _ ) => CounterPage(),
      //   '/provider': ( _ ) => CounterProviderPage(),
      // },
      
      // onGenerateRoute: RouteGenerator.generateRoute,

      onGenerateRoute: Flurorouter.router.generator,  
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
