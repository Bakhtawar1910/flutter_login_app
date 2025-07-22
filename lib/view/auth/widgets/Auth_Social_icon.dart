import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/constant/colors.dart';

class CustomSocialIcon extends StatelessWidget {
  final IconData IconName;
  final Color IconColor;

  CustomSocialIcon({
    required this.IconName,
    required this.IconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: Icon(
          IconName,
          color: IconColor,
          size: 24,
        ),
      ),
    );
  }
}
