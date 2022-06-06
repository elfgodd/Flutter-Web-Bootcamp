import 'package:basic/ui/views/counter_provider_view.dart';
import 'package:basic/ui/views/counter_view.dart';
import 'package:basic/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);

    // This makes the transition take 1 second.
    // transitionDuration: Duration(milliseconds: 1000),

    // No transition
    // transitionType: TransitionType.none);

    router.define('/stateful',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/provider',
        handler: _counterProviderHandler,
        transitionType: TransitionType.fadeIn);

    router.notFoundHandler = _pageNotFound;
  }

  // Handlers
  static Handler _counterHandler = Handler(handlerFunc: (context, params) {
    // print(params);
    // print(params['base']);
    // print(params['base']?[0]);
    return CounterView(base: params['base']?[0] ?? '5');
  });

  static Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) => CounterProviderView());

  static Handler _pageNotFound = Handler(handlerFunc: (_, __) => View404());
}
