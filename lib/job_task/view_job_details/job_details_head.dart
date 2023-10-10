import 'package:flutter/material.dart';

import '../../app_theme/app_constants.dart';

class JobDetailsHead extends StatelessWidget {
  const JobDetailsHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.amber),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Company Name',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: primaryColor),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Software Engineer',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: primaryColor),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Lahore Pakistan',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: primaryColor),
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(
          runSpacing: 5,
          spacing: 20,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: primaryColor),
              ),
              child: Text(
                'Full Time',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: primaryColor, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: primaryColor),
              ),
              child: Text(
                '\$5K - \$10K',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: primaryColor, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: primaryColor),
              ),
              child: Text(
                'Today',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: primaryColor, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(
          runSpacing: 5,
          spacing: 30,
          children: [
            Text(
              'Posted on: 2023-08-08',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: primaryColor, fontSize: 12),
            ),
            Text(
              'Expire on: 2023-09-08',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: primaryColor, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
