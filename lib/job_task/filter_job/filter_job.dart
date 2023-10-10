import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:dear_god_book_shop/job_task/filter_job/filter_head.dart';
import 'package:dear_god_book_shop/job_task/filter_job/job_tile.dart';
import 'package:dear_god_book_shop/job_task/models/job_details_model.dart';
import 'package:flutter/material.dart';

import '../home/componants/app_foot.dart';

class FilterJob extends StatelessWidget {
  const FilterJob({Key? key}) : super(key: key);

  static final List<JobDetails> myJobs = [
    JobDetails(id: 1, jobTitle: 'Software Engineer'),
    JobDetails(id: 2, jobTitle: 'Frontend Developer'),
    JobDetails(id: 3, jobTitle: 'Software Engineer'),
    JobDetails(id: 4, jobTitle: 'Software Engineer'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            // borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(20),
            //     topRight: Radius.circular(20),
            //     bottomLeft: Radius.circular(40),
            //     bottomRight: Radius.circular(40)
            // ),
            color: primaryColor),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FilterHead(),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    JobTile(
                      myJob: myJobs[0],
                    ),
                    JobTile(
                      myJob: myJobs[1],
                    ),
                    JobTile(
                      myJob: myJobs[2],
                    ),
                    JobTile(
                      myJob: myJobs[3],
                    )
                  ],
                ),
              ),
            ),
            const AppFoot(),
          ],
        ),
      ),
    );
  }
}
