import 'package:flutter/material.dart';

class TSearchBar extends StatelessWidget {
  const TSearchBar({
    super.key,
    required this.padding,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.hintTextColor = Colors.black54,
  });
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? hintTextColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        style: TextStyle(
          color:
              textColor, // text should be black for better visibility in light mode and dark mode
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor,

          hintText: 'Search In Store',
          hintStyle: TextStyle(color: hintTextColor),
          // text should be black for better visibility in light mode  and dark mode
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
