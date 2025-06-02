import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class TGridLayoutBuilder extends StatelessWidget {
  const TGridLayoutBuilder({
    super.key,
    required this.itemCount,
    this.mainAxisExtent,
    required this.itemBuilder,
  });

  // This widget builds a grid layout for any element that needs to be displayed in a grid format.
  // It uses a GridView.builder to create a grid with a fixed number of columns and spacing.
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: TSizes.gridViewSpacing,
            crossAxisSpacing: TSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: itemBuilder);
  }
}
