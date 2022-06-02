import 'package:basic/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/', handler: _counterHanlder);
  }

  // Handlers
  static Handler _counterHanlder =
      Handler(handlerFunc: (context, params) => CounterView());

}
