import 'package:dear_god_book_shop/home/components/footer/mailing_list.dart';
import 'package:flutter/material.dart';

import '../../../app_theme/app_constants.dart';
import '../../../responsive/responsive.dart';
import 'footer_tabs.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 60, vertical: widgetVerticalPadding),
      color: Colors.teal.shade50,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MailList(),
          SizedBox(height: 50),
          FooterTabs(),
          SizedBox(height: 20),
          Divider(
            color: greyColor,
            thickness: 0.3,
          ),
          SizedBox(height: 10),
          Align(
            alignment: Responsive.isDesktop(context)
                ? Alignment.centerLeft
                : Alignment.center,
            child: Text(
              '© 2023 Dear God Book Shop. All rights reserved',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: greyColor, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
