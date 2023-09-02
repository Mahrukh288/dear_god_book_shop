import 'package:dear_god_book_shop/contact_us/contact_us.dart';
import 'package:dear_god_book_shop/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../app_theme/app_constants.dart';

class AppTabBar extends StatelessWidget {
  AppTabBar({Key? key}) : super(key: key);

  final List<String> _tabs = [
    'Home',
    'Books',
    'Journals and more.',
    'Accessories',
    'Contact Us',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Wrap(
        runSpacing: 5,
        spacing: 50,
        children: [
          _setText(context, 0),
          _setText(context, 1),
          _setText(context, 2),
          _setText(context, 3),
          _setText(context, 4),
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

  Widget _setText(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        switch (index) {
          case 0:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
            break; // without this, the switch statement would execute case 2 also!
          case 1:
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => Container(),
            // ));
            break;
          case 2:
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => Container(),
            // ));
            break;
          case 3:
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => Container(),
            // ));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ContactUs(),
            ));
            break;
        }
      },
      child: Text(
        _tabs[index],
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
