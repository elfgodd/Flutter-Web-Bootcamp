import 'package:basic/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

import 'package:basic/ui/shared/custom_flat_button.dart';

class CounterProviderPage extends StatefulWidget {
  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                'Counter: $counter',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              CustomFlatButton(
                text: 'Increment',
                onPressed: () => setState(() => counter++),
              ),
              CustomFlatButton(
                text: 'Decrement',
                onPressed: () => setState(() => counter--),
              ),
            ],
          ),
          Spacer(),         
        ],
      ),
    );
  }
}
