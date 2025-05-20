import 'package:e_commerce_application/features/authentication/screens/email_verification/emailVerificationScreen.dart';
import 'package:e_commerce_application/features/authentication/screens/email_verification/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  void signUp() {
    // Perform sign-up logic here
    // navigate to email verification page
    Get.to(
      () =>
          const Emailverificationscreen(), // Replace with your actual email verification screen widget
      transition: Transition.downToUp,
    );
  }

  void verifyEmail() {
    // navigate to email verification success page
    Get.to(
      () =>
          const SuccessScreen(), // Replace with your actual email verification success screen widget
      transition: Transition.downToUp,
    );
  }
}
