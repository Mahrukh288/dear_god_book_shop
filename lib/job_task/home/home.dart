import 'package:flutter/material.dart';

import '../filter_job/filter_job.dart';
import 'componants/app_foot.dart';
import 'componants/app_head.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
            const AppHeader(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FilterJob()),
                  );
                },
                child: const Text('Show Results')),
            const AppFoot(),
          ],
        ),
      ),
    );
  }
}
