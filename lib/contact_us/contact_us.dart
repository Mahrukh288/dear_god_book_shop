import 'package:dear_god_book_shop/contact_us/contact_us_tile.dart';
import 'package:flutter/material.dart';

import '../app_drawer.dart';
import '../app_theme/app_constants.dart';
import '../home/components/app_head.dart';
import '../home/components/footer/footer.dart';
import '../home/components/tabs.dart';
import '../responsive/responsive.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.isMobile(context)
                  ? screenSize * 5
                  : screenSize * 10,
              vertical: appVerticalPadding),
          child: Column(
            children: [
              AppHead(),
              if (Responsive.isDesktop(context)) ...[
                AppTabBar(),
                Divider(color: primaryColor, thickness: 0.3),
              ],
              SizedBox(
                height: 30,
              ),
              ContactUsTile(),
              SizedBox(
                height: 30,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
