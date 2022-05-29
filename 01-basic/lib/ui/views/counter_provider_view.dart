import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:basic/ui/shared/custom_app_menu.dart';
import 'package:basic/ui/shared/custom_flat_button.dart';
import 'package:basic/providers/counter_provider.dart';

class CounterProviderView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: _CounterProviderViewBody());
  }
}

class _CounterProviderViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomAppMenu(),
        Spacer(),
        Text(
          'Counter Provider',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: ${counterProvider.counter}',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Increment',
              onPressed: () => counterProvider.increment(),
            ),
            CustomFlatButton(
              text: 'Decrement',
              onPressed: () => counterProvider.decrement(),
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
