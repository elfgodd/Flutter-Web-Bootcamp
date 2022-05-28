import 'package:flutter/material.dart';

import 'package:basic/ui/shared/custom_app_menu.dart';
import 'package:basic/ui/shared/custom_flat_button.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          Text(
            'Stateful Counter',
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
