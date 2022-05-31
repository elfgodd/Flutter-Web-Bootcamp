import 'package:flutter/material.dart';

import 'package:basic/ui/shared/custom_flat_button.dart';
import '../../locator.dart';
import '../../services/navigation_service.dart';

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
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Counter Provider',
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Another Page',
            // onPressed: () => Navigator.pushNamed(context, '/another-page'),
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
