import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';

class AppHead extends StatelessWidget {
  const AppHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!Responsive.isDesktop(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu)),
              const Icon(Icons.shopping_cart),
            ],
          ),
        Text(
          'Dear God',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: primaryColor,
              fontSize: Responsive.isMobile(context) ? 50 : 55),
        ),
        Text(
          'a Book Shop by Mahrukh Zafar',
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: primaryColor),
        ),
      ],
    );
  }
}
