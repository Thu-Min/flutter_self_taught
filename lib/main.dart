import 'package:flutter/material.dart';
import 'package:flutter_self_taught/components/bottom_bar.dart';
import 'package:flutter_self_taught/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticket Booking App',
      theme: ThemeData(
        primaryColor: primary,
        useMaterial3: true,
      ),
      home: const BottomBar(),
    );
  }
}
