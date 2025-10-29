import 'package:flutter/material.dart';
import 'package:hungry/features/auth/view/login_view.dart';
import 'package:hungry/features/auth/view/signup_view.dart';
import 'package:hungry/root.dart';
import 'package:hungry/splach.dart';

void main() {
  runApp(const hungry());
}

class hungry extends StatelessWidget {
  const hungry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hungry App',
      home: Root(),
    );
  }
}
