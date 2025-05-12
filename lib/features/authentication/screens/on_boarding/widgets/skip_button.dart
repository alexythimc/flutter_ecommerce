import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ArrowButtonWidget extends StatelessWidget {
  const ArrowButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Iconsax.arrow_circle_right,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text("Skip"),
        ),
      ],
    );
  }
}
