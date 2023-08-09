import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:flutter/material.dart';

import '../../../responsive/responsive.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      height: Responsive.isMobile(context) ? null : 400,
      width: Responsive.isMobile(context)
          ? MediaQuery.of(context).size.width * 0.8
          : Responsive.isTablet(context)
              ? MediaQuery.of(context).size.width * 0.35
              : MediaQuery.of(context).size.width * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jasmine Ward, First Magazine',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: primaryColor, fontSize: 12),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            ],
          ),
          // Text(
          //   '"',
          //   style: Theme.of(context)
          //       .textTheme
          //       .displayLarge
          //       ?.copyWith(height: 0.01),
          // ),
          SizedBox(height: 15),
          Text(
            '"I am a review. Click to edit me and add text that says something nice about you and your work. Share a bit of critical acclaim and spur some excitement for your latest project."',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
