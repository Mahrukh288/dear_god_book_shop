import 'package:flutter/material.dart';

import '../../app_theme/app_constants.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Wrap(
        runSpacing: 5,
        spacing: 50,
        children: [
          _setText(context, 'Home'),
          _setText(context, 'Books'),
          _setText(context, 'Journals and more.'),
          _setText(context, 'Accessories'),
          _setText(context, 'Contact us'),
          const Icon(Icons.shopping_cart),
          SizedBox(
            width: 30,
          ),
          Text(
            'Reading Section',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: primaryColor),
          ),
        ],
      ),
    );
  }

  Widget _setText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
