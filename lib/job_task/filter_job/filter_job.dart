import 'package:dear_god_book_shop/job_task/filter_job/filter_head.dart';
import 'package:flutter/material.dart';

import '../home/componants/app_foot.dart';

class FilterJob extends StatelessWidget {
  const FilterJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilterHead(),
            AppFoot(),
          ],
        ),
      ),
    );
  }
}
