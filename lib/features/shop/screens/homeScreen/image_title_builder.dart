import 'package:flutter/material.dart';

class TImageTitleBuilder extends StatelessWidget {
  const TImageTitleBuilder({
    super.key,
    required this.title,
    this.backgroundColor = Colors.white,
    required this.imagepaths,
    required this.onTap,
  });

  final List<String> title;
  final Color backgroundColor;
  final List<String> imagepaths;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 210.0, left: 16.0),
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagepaths.length, // Replace with your category count
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        width: 60,
                        height: 70,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage(imagepaths[index]),
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  //title
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 55,
                      child: Text(
                        title[index], // Replace with your category titles
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
