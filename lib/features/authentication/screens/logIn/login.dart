import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login_controller.dart';
import 'copyright.dart';
import 'google_facebook_logo.dart';
import 'login_logo_image.dart';
import 'or_divider.dart';
import 'text_field_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //add image here
              SizedBox(
                height: TSizes.appBarHeight,
              ),
              const LoginLogoImageNTitle(),
              TextfieldsWidget(),
              SizedBox(height: TSizes.gridViewSpacing),

              /// OR Divider
              OrDivider(),
              SizedBox(height: TSizes.gridViewSpacing),

              /// Social Media Buttons
              GoogleNFacebookLogo(),
              SizedBox(height: 24),

              /// Footer
              CopyRight(),
            ],
          ),
        ),
      ),
    );
  }
}
