import 'package:flutter/material.dart';

import '../../../app_theme/app_constants.dart';

class ProfileFoot extends StatelessWidget {
  const ProfileFoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                const Icon(
                  Icons.logout,
                  color: primaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  'Logout',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: primaryColor, fontWeight: FontWeight.w600),
                )
              ],
            )),
        Text(
          'App Version - V2.10',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: primaryColor, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
