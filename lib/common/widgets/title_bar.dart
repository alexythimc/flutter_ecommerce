import 'dart:ffi';

import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
    required this.title,
    required this.actionText,
    this.onActionPressed,
  });
  final String title;
  final Void Function()? onActionPressed;
  final bool isActionEnabled = true;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        TextButton(
          onPressed: onActionPressed,
          child: Text(
            actionText,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.blueGrey,
                ),
          ),
        ),
      ],
    );
  }
}
