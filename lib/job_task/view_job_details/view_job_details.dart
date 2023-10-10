import 'package:dear_god_book_shop/job_task/view_job_details/job_details.dart';
import 'package:flutter/material.dart';

import '../home/componants/app_foot.dart';
import 'view_job_details_header.dart';

class ViewJobDetails extends StatelessWidget {
  const ViewJobDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
        child: const Column(children: [
          ViewJobDetailsHeader(),
          Expanded(child: JobDetails()),
          AppFoot(),
        ]),
      ),
    );
  }
}
