import 'package:flutter/material.dart';

class PhotosArray extends StatelessWidget {
  const PhotosArray({
    super.key,
    this.productsImages,
  });
  final List<String>? productsImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: productsImages!.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  productsImages![index],
                  height: 300,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }),
    );
  }
}
