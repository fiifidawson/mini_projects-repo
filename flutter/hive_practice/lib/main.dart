import 'package:flutter/material.dart';
import 'package:hive_practice/home_page.dart';

void main() {

  // Initialize Hive

  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
}
}