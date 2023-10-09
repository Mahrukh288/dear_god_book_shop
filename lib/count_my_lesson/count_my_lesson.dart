import 'package:dear_god_book_shop/app_theme/app_constants.dart';
import 'package:dear_god_book_shop/count_my_lesson/componants/task.dart';
import 'package:flutter/material.dart';

class CountMyLesson extends StatelessWidget {
  const CountMyLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count My Lesson',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: primaryColor,
                  fontSize: 40,
                )),
        const Task(task: 'Dua', taskIcon: ''),
        // const Task(task: 'Qaidah', taskIcon: ''),
        // const Task(task: 'Recitation', taskIcon: ''),
        // const Task(task: 'Translation', taskIcon: ''),
        // const Task(task: 'Root Words', taskIcon: ''),
        // const Task(task: 'Tafseer', taskIcon: ''),
        // const Task(task: 'Tajweed', taskIcon: ''),
      ],
    );
  }
}
