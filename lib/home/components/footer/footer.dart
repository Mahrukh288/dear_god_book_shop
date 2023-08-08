import 'package:flutter/material.dart';

import '../../../app_theme/app_constants.dart';
import '../../../responsive/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 20, vertical: widgetVerticalPadding),
      color: Colors.teal.shade50,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flex(
                direction: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
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
                direction: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
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
          ),
          SizedBox(height: 30),
          Divider(
            color: greyColor,
            thickness: 0.3,
          ),
          SizedBox(height: 10),
          Align(
            alignment: Responsive.isDesktop(context)
                ? Alignment.centerLeft
                : Alignment.center,
            child: Text(
              '© 2023 Dear God Book Shop. All rights reserved',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: greyColor, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }

  Widget _setText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12),
    );
  }
}
