import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class TextFieldWidgetSignUp extends StatelessWidget {
  const TextFieldWidgetSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'First Name',
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
          ),
          const SizedBox(width: TSizes.defaultItemSpace),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Last Name',
                prefixIcon: Icon(Iconsax.user_edit4),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: TSizes.defaultSectionSpace),

      /// Username
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Username',
          prefixIcon: Icon(Iconsax.user),
        ),
        keyboardType: TextInputType.text,
      ),
      const SizedBox(height: TSizes.defaultSectionSpace),

      /// Email
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Email',
          prefixIcon: Icon(Iconsax.arrow_right),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
      const SizedBox(height: TSizes.defaultSectionSpace),

      /// Mobile Number
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Mobile Number',
          prefixIcon: Icon(Iconsax.call),
        ),
        keyboardType: TextInputType.phone,
      ),
      const SizedBox(height: TSizes.defaultSectionSpace),

      /// Password
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Password',
          prefixIcon: Icon(Iconsax.password_check),
          suffixIcon: Icon(Iconsax.eye_slash),
        ),
        obscureText: true,
      ),
    ]);
  }
}
