import 'package:flutter/material.dart';

import 'product_card.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Text('Our Best Selling',
            style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: 40),
        Container(
          height: 1000,
          child: Stack(
            children: [
              Positioned(
                bottom: 200,
                top: 200,
                child: Container(
                  color: Colors.amber,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 600,
                ),
              ),
              Positioned(
                bottom: 500,
                left: MediaQuery.of(context).size.width * 0.15,
                child: Row(
                  children: [
                    ProductCard(),
                    SizedBox(width: 40),
                    ProductCard(),
                  ],
                ),
              ),
              Positioned(
                top: 600,
                left: MediaQuery.of(context).size.width * 0.15,
                child: Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.green[200],
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.5 + 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Idea Behind Dear God',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Dear God is a safe space to those introverts who feel a lot but when it comes to say, they do not find enough words. Because no one seems to understand.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'So they love to write to God, even though they know He already knows everything. ',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
