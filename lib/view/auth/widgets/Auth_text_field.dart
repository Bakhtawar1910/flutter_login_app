import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' as google_fonts;
import 'package:todoapp/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final String label;
  final IconData icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;

  CustomTextField({
    super.key,
    required this.keyboardType,
    required this.label,
    required this.icon,
    this.controller,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      style: google_fonts.GoogleFonts.poppins(
        fontSize: 14,
        color: AppColors.black,
      ),
      cursorColor: AppColors.primary,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        hintText: label,
        hintStyle: TextStyle(color: AppColors.grey),
        suffixIcon: Icon(icon, color: AppColors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(13),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2),
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    );
  }
}
