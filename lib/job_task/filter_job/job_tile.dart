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
        height: 110,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
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
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: myJob.id == 1
                          ? Colors.amber
                          : myJob.id == 2
                              ? Colors.blue
                              : myJob.id == 3
                                  ? Colors.pink[200]
                                  : Colors.greenAccent),
                ),
                const SizedBox(width: 10),
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
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      myJob.location,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: primaryColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
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
                  myJob.status ? Icons.bookmark : Icons.bookmark_outline,
                  color: primaryColor,
                  size: 30,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  myJob.postedDate,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: primaryColor),
                ),
                const SizedBox(
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
