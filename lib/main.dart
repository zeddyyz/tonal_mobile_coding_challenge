import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tonal_mobile_coding_challenge/features/weight_management/weight_display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tonal Mobile Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const WeightDisplayScreen(),
    );
  }
}
