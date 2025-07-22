import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' as google_fonts;
import 'package:todoapp/view/auth/widgets/Auth_Social_icon.dart';
import 'package:todoapp/view/auth/widgets/Auth_social_button.dart';
import 'package:todoapp/view/auth/widgets/Auth_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/view/home/home_screen.dart';
import 'package:todoapp/constant/colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    }
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email is required';
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) return 'Enter a valid email';
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Password is required';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white, // ✅ White background
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Login here',
                  style: google_fonts.GoogleFonts.poppins(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Welcome back to the App',
                  style: google_fonts.GoogleFonts.poppins(
                    color: AppColors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 35),
                CustomTextField(
                    controller: _emailController,
                    validator: _validateEmail,
                    keyboardType: TextInputType.emailAddress,
                    label: 'Email',
                    icon: Icons.email_outlined),
                const SizedBox(height: 20),
                CustomTextField(
                  keyboardType: TextInputType.visiblePassword,
                  label: 'Password',
                  icon: Icons.lock,
                  controller: _passwordController,
                  validator: _validatePassword,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot password?',
                    style: google_fonts.GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                CustomSocialButton(
                  label: 'Sign In',
                  onPressed: () => _submitForm(context),
                ),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Create new Account',
                    style: google_fonts.GoogleFonts.poppins(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Or continue with',
                    style: google_fonts.GoogleFonts.poppins(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSocialIcon(
                      IconName: FontAwesomeIcons.google,
                      IconColor: AppColors.googleRed,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CustomSocialIcon(
                      IconName: FontAwesomeIcons.facebookF,
                      IconColor: AppColors.secondary,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CustomSocialIcon(
                      IconName: FontAwesomeIcons.twitter,
                      IconColor: AppColors.twitterBlue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
