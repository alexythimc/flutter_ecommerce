import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/sizes.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final bool showBackButton;

  final dynamic iconColor;

  const TAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.showBackButton = false,
    this.iconColor,
  });
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TSizes.appBarHeight);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSectionSpace),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackButton
            ? IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Get.back(),
              )
            : leadingIcon != null
                ? IconButton(
                    icon: Icon(leadingIcon),
                    onPressed: leadingOnPressed,
                    // // If iconColor is null, it will use the default icon color according to the theme
                    // If iconColor is null, it will use the default icon color according to the theme
                    color: iconColor != null
                        ? Color(iconColor)
                        : Theme.of(context).iconTheme.color,
                  )
                : null,
        title: title,
        actions: actions,
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
    );

    // @override
    // Widget build(BuildContext context) {
    //   return Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             "GOOD DAY FOR SHOPPING",
    //             style: TextStyle(
    //               color: Colors.white,
    //             ),
    //           ),
    //           Text(
    //             "Karan Rabari",
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 20,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ],
    //       ),
    //       Stack(children: [
    //         IconButton(
    //           icon: Icon(
    //             Iconsax.shopping_bag,
    //             size: TSizes.mdIcon,
    //             color: Colors.white,
    //           ),
    //           onPressed: () {},
    //         ),
    //         Positioned(
    //           right: 0,
    //           top: 0,
    //           child: CircleAvatar(
    //             radius: 10,
    //             backgroundColor: Colors.red,
    //             child: Text(
    //               "2",
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 12,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ]),
    //     ],
    //   );
    //}
  }
}
