import 'package:flutter/material.dart';

import '../../../app_theme/app_constants.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //width: 350,
        height: 45,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),

        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: primaryColor,
                  size: 30,
                )),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: TextField(
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.grey, fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                    hintText: 'Search Job', border: InputBorder.none),
              ),
            )
            // Text('Search Job',
            //     style: Theme.of(context).textTheme.bodySmall?.copyWith(
            //         color: Colors.grey, fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
