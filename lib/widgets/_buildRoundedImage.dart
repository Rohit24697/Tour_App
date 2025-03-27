import 'package:flutter/material.dart';

Widget _buildRoundedImage(String imageUrl) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(16), // Rounded corners
    child: Image.network(
      imageUrl,
      width: 63,
      height: 63,
      fit: BoxFit.cover, // Makes sure images fit properly
    ),
  );
}