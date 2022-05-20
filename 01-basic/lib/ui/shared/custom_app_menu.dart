import 'package:basic/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20, vertical: 10
      ),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Stateful Counter',
            onPressed: () {},
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Counter Provider',
            onPressed: () {},
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Another Page',
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
