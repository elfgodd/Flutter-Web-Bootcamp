import 'package:fluro/fluro.dart';
import 'package:vertical_landing_page/router/router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    // Routes
    router.define('/:page', handler: homeHandler);

    // 404
    router.notFoundHandler = homeHandler;
  }
}
