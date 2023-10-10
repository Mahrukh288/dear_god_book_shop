import 'package:dear_god_book_shop/job_task/home/componants/app_foot.dart';
import 'package:dear_god_book_shop/job_task/home/home.dart';
import 'package:flutter/material.dart';

import 'app_theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dear God Book Shop',
      theme: AppTheme().lightTheme,
      home: const Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: Home()),
        bottomNavigationBar: AppFoot(),
      ),
    );
  }
}
