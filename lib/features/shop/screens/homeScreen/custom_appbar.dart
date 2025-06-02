import 'package:flutter/material.dart';

import '../../../../common/widgets/app_bar.dart';
import '../../../../common/widgets/carticon.dart';

class TCustomAppBar extends StatelessWidget {
  const TCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Great day for shopping!',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                ),
          ),
          Text(
            'Karan Rabari',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
      actions: [
        CartIcon(iconColor: Colors.white),
      ],
    );
  }
}
