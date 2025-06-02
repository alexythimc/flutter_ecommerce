import 'package:e_commerce_application/features/authentication/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class TextfieldsWidget extends StatelessWidget {
  const TextfieldsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: TSizes.buttonIconSize,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Iconsax.arrow_right),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Iconsax.password_check),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),

            /// Login Button with my theme
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.login(),
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                )),
                // text with bold font in my theme
                child: Text("LogIn", style: TextTheme().titleLarge),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => controller.navigateToForgotPassword(),
                  child: Text("Forgot Password?"),
                ),
              ],
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.navigateToSignUp(),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                child: Text("Create Account", style: TextTheme().titleLarge),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
