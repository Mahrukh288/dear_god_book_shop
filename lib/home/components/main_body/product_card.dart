import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:flutter/material.dart';

import '../../../responsive/responsive.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(vertical: 20),
      width: Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.width * 0.2
          : Responsive.isTablet(context)
              ? MediaQuery.of(context).size.width * 0.3
              : MediaQuery.of(context).size.width * 0.45,
      height: Responsive.isDesktop(context) ? 400 : 400,
      child: Column(
        children: [
          Text(
            '- - Best Selling - -',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: primaryColor),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Image.asset(
              'images/product1.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Fish Tales',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: blackColor),
          ),
          SizedBox(height: 3),
          Text(
            'Rs. 18.0',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
