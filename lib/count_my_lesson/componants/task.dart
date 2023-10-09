import 'package:dear_god_book_shop/count_my_lesson/componants/counts.dart';
import 'package:flutter/material.dart';

import '../../app_theme/app_constants.dart';

class Task extends StatelessWidget {
  const Task({Key? key, required this.task, required this.taskIcon})
      : super(key: key);
  final String task;
  final String taskIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.shield_moon,
              color: primaryColor,
            ),
            Text(
              task,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: primaryColor,
                    fontSize: 15,
                  ),
            ),
          ],
        ),
        Counts()
      ],
    );
  }
}
