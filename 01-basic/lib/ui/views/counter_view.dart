import 'package:flutter/material.dart';

import 'package:basic/ui/shared/custom_app_menu.dart';
import 'package:basic/ui/shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  final String base;

  const CounterView({
    super.key,
    required this.base
  });

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  int counter = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if ( int.tryParse(widget.base) != null)
      counter = int.parse(widget.base);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
          mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
