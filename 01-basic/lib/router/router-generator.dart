import 'package:flutter/material.dart';

import '../ui/pages/counter_provider_page.dart';
import '../ui/pages/counter_page.dart';
import '../ui/pages/page_404.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return MaterialPageRoute(builder: (_) => CounterPage());
      case '/provider':
        return MaterialPageRoute(builder: (_) => CounterProviderPage());
      default:
        return MaterialPageRoute(builder: (_) => Page404());
    }
  }
}
