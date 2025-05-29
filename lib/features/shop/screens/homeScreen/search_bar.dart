import 'package:flutter/material.dart';

class TSearchBar extends StatelessWidget {
  const TSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0, left: 8.0, right: 8.0),
      child: TextField(
        style: TextStyle(
          color: Colors
              .black, // text should be black for better visibility in light mode and dark mode
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,

          hintText: 'Search In Store',
          hintStyle: TextStyle(color: Colors.black),
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
