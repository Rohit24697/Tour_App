import 'package:flutter/material.dart';

class ImageCarouselCard extends StatelessWidget {
  final String imageUrl; // URL of the image
  final int pageIndex; // Index of the current page
  final int totalPages; // Total number of pages

  ImageCarouselCard({
    required this.imageUrl,
    required this.pageIndex,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal spacing
      child: Column(
        mainAxisSize: MainAxisSize.min, // Ensure the Column takes minimal space
        children: [
          // Card-like Image Container
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0), // Rounded corners
            child: Stack(
              children: [
                Image.network(
                  imageUrl,
                  width: double.infinity, // Take full width
                  height: 300, // Adjust height as needed
                  fit: BoxFit.cover, // Cover the area, potentially cropping
                ),
                // Gradient Overlay (Optional)
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.5),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  width: double.infinity,
                  height: 300,
                ),
              ],
            ),
          ),

          SizedBox(height: 16.0), // Spacing between image and dots

          // Dots Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              totalPages,
                  (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                width: 8.0,
                height: 8.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: pageIndex == index ? Colors.blue : Colors.grey, // Active dot is blue
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}