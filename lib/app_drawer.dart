import 'package:flutter/material.dart';

import 'app_theme/app_constants.dart';
import 'responsive/responsive.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) Scaffold.of(context).closeDrawer();
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topRight,
              child: CloseButton(
                color: primaryColor,
              )),
          _setText(context, 'Home'),
          SizedBox(height: 10),
          _setText(context, 'Books'),
          SizedBox(height: 10),
          _setText(context, 'Journals and more.'),
          SizedBox(height: 10),
          _setText(context, 'Accessories'),
          SizedBox(height: 10),
          _setText(context, 'Contact us'),
          SizedBox(height: 30),
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
