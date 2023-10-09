import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:flutter/material.dart';

class Counts extends StatefulWidget {
  const Counts({Key? key}) : super(key: key);

  @override
  State<Counts> createState() => _CountsState();
}

class _CountsState extends State<Counts> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          child: InkWell(
            onTap: () {
              setState(() {
                tapped = true;
              });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: tapped ? primaryColor : null,
                  border: Border.all(color: primaryColor),
                  shape: BoxShape.circle),
            ),
          ),
        )
      ],
    );
  }
}
