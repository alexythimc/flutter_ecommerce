import 'package:flutter/material.dart';

class CategoriesTitle extends StatelessWidget {
  const CategoriesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 180.0, left: 16.0),
      child: Text(
        "Popular Categories",
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
