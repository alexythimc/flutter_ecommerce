import 'package:e_commerce_application/features/authentication/screens/logIn/forgot_password.dart';
import 'package:e_commerce_application/features/authentication/screens/logIn/forgot_password_email_verifivation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/SignUp/sign_up.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool isPasswordVisible = false.obs;
  final RxBool isLoading = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  // Function to handle clicking the "create account" button to navigate to the sign-up page widget SignUp
  void navigateToSignUp() {
    Get.to(
      () => SignUp(), // Replace with your actual sign-up screen widget
      transition: Transition.rightToLeft,
    );
  }

  void navigateToForgotPassword() {
    // Replace with your actual forgot password screen widget
    Get.to(
      () =>
          const ForgotPassword(), // Replace with your actual sign-up screen widget
      transition: Transition.rightToLeft,
    );
  }

  void resetPassword() {
    // go to the reset password page
    Get.to(
      () =>
          const ForgotPasswordEmailVerification(), // Replace with your actual sign-up screen widget
      transition: Transition.downToUp,
    );
  }
}
