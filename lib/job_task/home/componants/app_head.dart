import 'package:dear_god_book_shop/job_task/home/componants/display.dart';
import 'package:dear_god_book_shop/job_task/home/componants/job_search.dart';
import 'package:flutter/material.dart';

import '../../../app_theme/app_constants.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/Menu.png'),
            const SizedBox(
              height: 10,
            ),
            const Display(),
            const SizedBox(
              height: 10,
            ),
            const JobSearch()
          ],
        ),
      ),
    );
  }
}
