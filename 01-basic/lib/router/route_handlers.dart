
import 'package:fluro/fluro.dart';

import 'package:basic/ui/views/counter_provider_view.dart';
import 'package:basic/ui/views/counter_view.dart';
import 'package:basic/ui/views/view_404.dart';

final Handler counterHandler = Handler(handlerFunc: (context, params) {
    // print(params);
    // print(params['base']);
    // print(params['base']?[0]);
    // return CounterView( base: params['base']?[0] ?? '5' );
    return CounterView( base: params['base']?.first ?? '5' );
  });

  // static Handler _counterProviderHandler =
  //     Handler(handlerFunc: (context, params) => CounterProviderView());

  final Handler counterProviderHandler =
      Handler(handlerFunc: (context, params) {
    // print(params);
    // return CounterProviderView( base: params['q']?[0] ?? '10' );
    return CounterProviderView( base: params['q']?.first ?? '10' );
  });

  final Handler dashboardUserHandler =
    Handler(handlerFunc: (context, params) {
      print(params);
      return  View404();
  });

  final Handler pageNotFound = Handler(handlerFunc: (_, __) => View404());