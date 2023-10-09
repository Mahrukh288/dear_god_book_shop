import 'package:flutter/material.dart';

import '../../profile/profile.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Umar Farooq', style: Theme.of(context).textTheme.bodyLarge),
              Text('12:22 AM', style: Theme.of(context).textTheme.bodySmall),
              Text('2023-12-23', style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
          Image.asset('images/dp.png')
        ],
      ),
    );
  }
}
