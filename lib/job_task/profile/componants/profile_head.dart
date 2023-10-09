import 'package:flutter/material.dart';

class ProfileHead extends StatelessWidget {
  const ProfileHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Image.asset('images/dp.png'),
          const SizedBox(width: 15),
          Text(
            'Umar Farooq',
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ]),
        const BackButton(
          color: Colors.white,
        )
      ],
    );
  }
}
