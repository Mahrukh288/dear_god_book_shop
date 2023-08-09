import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width * 0.25,
      height: 500,
      child: Column(
        children: [
          Text(
            'Best Selling',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: primaryColor),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Image.asset(
              'images/product1.jpg',
              fit: BoxFit.fitWidth,
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
