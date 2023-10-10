import 'package:flutter/material.dart';

import '../../app_theme/app_constants.dart';

class FilterHead extends StatelessWidget {
  const FilterHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('images/Menu.png'),
              BackButton(color: textColor),
            ],
          ),
          Divider(color: textColor),
          Text(
            'Filtered Jobs',
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
