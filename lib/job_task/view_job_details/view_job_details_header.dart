import 'package:flutter/material.dart';

import '../../app_theme/app_constants.dart';

class ViewJobDetailsHeader extends StatelessWidget {
  const ViewJobDetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 30, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('images/menu_p.png'),
              const BackButton(
                color: primaryColor,
              )
            ],
          ),
          const Divider(
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
