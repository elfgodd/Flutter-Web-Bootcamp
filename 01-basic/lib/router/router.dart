import 'package:basic/ui/views/counter_provider_view.dart';
import 'package:basic/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/', handler: _counterHandler,
      transitionType: TransitionType.fadeIn);
      
      // This makes the transition take 1 second.
      // transitionDuration: Duration(milliseconds: 1000),

      // No transition
      // transitionType: TransitionType.none);

    router.define('/stateful', handler: _counterHandler,
      transitionType: TransitionType.fadeIn);

    router.define('/provider', handler: _counterProviderHandler,
      transitionType: TransitionType.fadeIn);
  }

  // Handlers
  static Handler _counterHandler =
      Handler(handlerFunc: (context, params) => CounterView());

  static Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) => CounterProviderView());
}
