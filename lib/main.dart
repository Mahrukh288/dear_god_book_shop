import 'package:dear_god_book_shop/app_theme/app_theme.dart';
import 'package:dear_god_book_shop/home/home_page.dart';
import 'package:flutter/material.dart';

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
