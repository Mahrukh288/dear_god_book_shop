import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:dear_god_book_shop/job_task/view_job_details/apply_for_job.dart';
import 'package:dear_god_book_shop/job_task/view_job_details/description_switch.dart';
import 'package:dear_god_book_shop/job_task/view_job_details/job_details_head.dart';
import 'package:flutter/material.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({Key? key}) : super(key: key);

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const JobDetailsHead(),
          const SizedBox(
            height: 5,
          ),
          const DescriptionSwitch(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description Heading',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: primaryColor),
                ),
                Text(
                  'Description',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: primaryColor),
                ),
                Text(
                  'Description Heading',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: primaryColor),
                ),
                Text(
                  'Description',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: primaryColor),
                )
              ],
            )),
          ),
          const ApplyForJob()
        ],
      ),
    );
  }
}
