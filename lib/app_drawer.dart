import 'package:flutter/material.dart';

import 'app_theme/app_constants.dart';
import 'contact_us/contact_us.dart';
import 'home/home_page.dart';
import 'responsive/responsive.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key? key}) : super(key: key);
  final List<String> _tabs = [
    'Home',
    'Books',
    'Journals and more.',
    'Accessories',
    'Contact Us',
  ];
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
          _setText(context, 0),
          SizedBox(height: 10),
          _setText(context, 1),
          SizedBox(height: 10),
          _setText(context, 2),
          SizedBox(height: 10),
          _setText(context, 3),
          SizedBox(height: 10),
          _setText(context, 4),
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
