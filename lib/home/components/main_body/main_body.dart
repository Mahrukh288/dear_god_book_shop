import 'package:flutter/material.dart';

import '../../../responsive/responsive.dart';
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
                bottom: Responsive.isDesktop(context) ? 600 : 600,
                left: 0,
                child: Row(
                  children: [
                    ProductCard(),
                    SizedBox(width: 10),
                    ProductCard(),
                    if (Responsive.isDesktop(context)) ...[
                      SizedBox(width: 10),
                      ProductCard(),
                    ]
                  ],
                ),
              ),
              Positioned(
                top: 550,
                right: !Responsive.isMobile(context)
                    ? 0
                    : MediaQuery.of(context).size.width * 0.15,
                //left: MediaQuery.of(context).size.width * 0.15,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 450,
                  width: MediaQuery.of(context).size.width * 0.5 + 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Idea Behind Dear God',
                        textAlign: TextAlign.center,
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
