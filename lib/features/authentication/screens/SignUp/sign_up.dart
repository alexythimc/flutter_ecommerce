import 'package:e_commerce_application/features/authentication/screens/SignUp/signup_button.dart';
import 'package:e_commerce_application/features/authentication/screens/SignUp/text_field_widget_signup.dart';
import 'package:e_commerce_application/features/authentication/screens/SignUp/title_text.dart';
import 'package:e_commerce_application/features/authentication/screens/logIn/google_facebook_logo.dart';
import 'package:e_commerce_application/features/authentication/screens/logIn/or_divider.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import 'check_box.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(),
              const SizedBox(height: TSizes.defaultSpace),
              TextFieldWidgetSignUp(),

              /// checkbox for terms and conditions
              CheckBoxWidget(),
              const SizedBox(height: TSizes.defaultSpace),

              /// Sign Up Button
              SignUpWidget(),
              const SizedBox(height: TSizes.defaultSpace),
              OrDivider(),
              GoogleNFacebookLogo()
            ],
          ),
        ),
      ),
    );
  }
}
