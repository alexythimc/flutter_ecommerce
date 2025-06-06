import 'package:e_commerce_application/utils/device/deviceutils.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSize {
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        labelColor:
            TDeviceUtils.isDarkMode(context) ? Colors.white : Colors.black,
        unselectedLabelColor:
            TDeviceUtils.isDarkMode(context) ? Colors.white70 : Colors.black54,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => TDeviceUtils.getTabBarSize();

  @override
  // TODO: implement child
  Widget get child => SizedBox(height: TDeviceUtils.getTabBarSize().height);
}
