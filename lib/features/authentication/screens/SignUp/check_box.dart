import 'package:flutter/material.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        const Text("I agree to the terms and conditions"),
      ],
    );
  }
}
