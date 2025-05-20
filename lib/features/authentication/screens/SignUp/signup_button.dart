import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/singup_controller.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => controller.signUp()
        // Sign up logic here
        ,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          "Sign Up",
        ),
      ),
    );
  }
}
