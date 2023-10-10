import 'package:dear_god_book_shop/job_task/home/componants/app_search_bar.dart';
import 'package:dear_god_book_shop/job_task/home/componants/search_menu.dart';
import 'package:flutter/material.dart';

class JobSearch extends StatelessWidget {
  const JobSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppSearchBar(),
        SizedBox(
          width: 20,
        ),
        SearchMenu()
      ],
    );
  }
}
