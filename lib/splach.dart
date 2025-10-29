import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/constants/app_colors.dart';

class SplachView extends StatelessWidget {
  const SplachView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Gap(280),
          Container(
            width: 300,
            height: 60,
            child: Center(child: Image.asset('assets/logo/logo.png')),
          ),
          Spacer(),
          Image.asset('assets/splach/splach.png', scale: 1),
        ],
      ),
    );
  }
}
