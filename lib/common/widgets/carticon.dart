import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/sizes.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
    this.iconColor,
  });
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
        icon: Icon(
          Iconsax.shopping_bag,
          size: TSizes.mdIcon,
          color: iconColor ?? Theme.of(context).iconTheme.color,
        ),
        onPressed: () {},
      ),
      Positioned(
        right: 0,
        top: 0,
        child: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.red,
          child: Text(
            "2",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
    ]);
  }
}
