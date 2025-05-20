import 'package:e_commerce_application/features/authentication/screens/logIn/password_verification_title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../email_verification/continue_resend.dart';
import '../email_verification/verification_image.dart';

class ForgotPasswordEmailVerification extends StatelessWidget {
  const ForgotPasswordEmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.close_circle),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //image
              VerificationImage(),

              /// title
              PasswordVerificationTitleSubtitle(),
              ContinueResendButton(),
            ],
          ),
        ),
      ),
    );
  }
}
