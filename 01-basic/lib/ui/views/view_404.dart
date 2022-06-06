import 'package:flutter/material.dart';

import '../shared/custom_flat_button.dart';

class View404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Page Not Found',
              style: TextStyle(fontSize: 20),
            ),
            CustomFlatButton(
              text: 'Go Back',
              onPressed: () => Navigator.pushNamed(context, '/stateful'),
            ),
          ],
        ),
      ),
    );
  }
}
