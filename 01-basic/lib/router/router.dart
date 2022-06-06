import 'package:fluro/fluro.dart';

import 'package:basic/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/',

    // Stateful Routes
    handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
    handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
    handler: counterHandler, transitionType: TransitionType.fadeIn);

    // Provider Routes
    router.define('/provider',
    handler: counterProviderHandler, transitionType: TransitionType.fadeIn);
    router.define('/dashboard/users/:userid/:roleid',
    handler: dashboardUserHandler, transitionType: TransitionType.fadeIn);

    // 404 - Not Page Found
    router.notFoundHandler = pageNotFound;
  }
    // Handlers
}
