import 'package:flutter/material.dart';

import '../../../responsive/responsive.dart';

class FooterTabs extends StatelessWidget {
  const FooterTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction:
          Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            _setText(context, 'FAQ'),
            SizedBox(
              width: 20,
              height: 10,
            ),
            _setText(context, 'Shipping & Returns'),
            SizedBox(
              width: 20,
              height: 10,
            ),
            _setText(context, 'Store Policy'),
            SizedBox(
              width: 20,
              height: 10,
            ),
            _setText(context, 'Payment Methods'),
          ],
        ),
        SizedBox(height: 20),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            _setText(context, 'Facebook'),
            SizedBox(
              width: 20,
              height: 10,
            ),
            _setText(context, 'Instagram'),
          ],
        ),
      ],
    );
  }

  Widget _setText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12),
    );
  }
}
