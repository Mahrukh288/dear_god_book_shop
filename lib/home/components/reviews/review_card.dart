import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:flutter/material.dart';

import '../../../responsive/responsive.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.width * 0.2
          : double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.reviews,
            color: primaryColor,
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
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: 15),
          Text(
            'Jasmine Ward, First Magazine',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: primaryColor, fontSize: 12),
          )
        ],
      ),
    );
  }
}
