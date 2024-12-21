import 'package:business_app/screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Business_Card());
}

// ignore: camel_case_types
class Business_Card extends StatelessWidget {
  const Business_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
