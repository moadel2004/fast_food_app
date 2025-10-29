import 'package:flutter/material.dart';
import 'package:hungry/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, required this.text});
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        height: 55,
        width: double.infinity,
        child: Center(
          child: CustomText(
            text: text,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w500,
            size: 20,
          ),
        ),
      ),
    );
  }
}
