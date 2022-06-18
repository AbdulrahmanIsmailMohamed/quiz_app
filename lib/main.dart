import 'package:flutter/material.dart';

import 'layout/quiez.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        scaffoldBackgroundColor: Colors.grey[350],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[350],
          elevation: 0.0,
        ),
      ),
      home: const Quiz(),
      debugShowCheckedModeBanner: false,
    );
  }
}
