import 'package:flutter/material.dart';

import '../../app_theme/app_constants.dart';

class ApplyForJob extends StatelessWidget {
  const ApplyForJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          //height: 48, width: 48,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: primaryColor),
          ),
          child: Icon(
            Icons.bookmark,
            color: primaryColor,
            size: 30,
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(vertical: 20)),
              onPressed: () {},
              child: Text(
                'Apply for Job',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w400),
              )),
        )
      ],
    );
  }
}
