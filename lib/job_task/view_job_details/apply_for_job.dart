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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: primaryColor),
          ),
          child: const Icon(
            Icons.bookmark,
            color: primaryColor,
            size: 30,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(vertical: 13)),
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
