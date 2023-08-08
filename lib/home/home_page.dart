import 'package:dear_god_book_shop/app_drawer.dart';
import 'package:dear_god_book_shop/home/components/app_head.dart';
import 'package:dear_god_book_shop/home/components/tabs.dart';
import 'package:flutter/material.dart';

import '../app_theme/app_constants.dart';
import '../responsive/responsive.dart';
import 'components/footer/footer.dart';
import 'components/reviews/reviews.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              SizedBox(height: 20),
              Divider(color: primaryColor, thickness: 0.3),
              if (Responsive.isDesktop(context)) ...[
                AppTabBar(),
                Divider(color: primaryColor, thickness: 0.3),
              ],
              Reviews(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
