import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import '../ui/pages/counter_provider_page.dart';
import '../ui/pages/counter_page.dart';
import '../ui/pages/page_404.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute( CounterPage(), '/stateful' );
      case '/provider':
        return _fadeRoute( CounterProviderPage(), '/provider' );
      default:
        return _fadeRoute( Page404(), '/404' );
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {

    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: ( _, __, ___ ) => child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: ( _, animation, __, ___) =>
        (kIsWeb)
      ? FadeTransition(
        opacity: animation,
        child: child,
        )
      : CupertinoPageTransition(
        primaryRouteAnimation: animation,
        secondaryRouteAnimation: __,
        linearTransition: true,
        child: child,
      ),
    );
  }
}
