import 'package:dear_god_book_shop/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';

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
      home: HomePage(),
    );
  }
}
