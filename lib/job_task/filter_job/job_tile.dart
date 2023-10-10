import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:dear_god_book_shop/job_task/models/job_details_model.dart';
import 'package:dear_god_book_shop/job_task/view_job_details/view_job_details.dart';
import 'package:flutter/material.dart';

class JobTile extends StatelessWidget {
  const JobTile({Key? key, required this.myJob}) : super(key: key);
  final JobDetails myJob;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ViewJobDetails()),
        );
      },
      child: Container(
        height: 100,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.amber),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myJob.jobTitle,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: primaryColor),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      myJob.location,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: primaryColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.grey[200]),
                      child: Text(
                        myJob.jobType,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: primaryColor, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.bookmark,
                  color: myJob.status ? primaryColor : null,
                  size: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  myJob.postedDate,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: primaryColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  myJob.salary,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: primaryColor, fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
