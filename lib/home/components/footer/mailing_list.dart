import 'package:dear_god_book_shop/responsive/responsive.dart';
import 'package:flutter/material.dart';

class MailList extends StatelessWidget {
  const MailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Join Our Mailing List',
          style:
              Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 25),
        ),
        SizedBox(height: 20),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(hintText: 'Enter your email here'),
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Subscribe Now')),
          ],
        )
      ],
    );
  }
}
