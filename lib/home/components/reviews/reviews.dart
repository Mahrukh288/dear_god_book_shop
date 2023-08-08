import 'package:dear_god_book_shop/home/components/reviews/review_card.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Text(
            'Reviews',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 40),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: [
              ReviewCard(),
              //SizedBox(width: 30),
              ReviewCard(),
              // SizedBox(width: 30),
              ReviewCard(),
            ],
          )
        ],
      ),
    );
  }
}
