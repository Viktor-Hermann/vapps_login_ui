import 'package:flutter/material.dart';

class BrandImage extends StatelessWidget {
  const BrandImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 62, vertical: 40),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.70,
            image: AssetImage('assets/brand_image.png'),
          ),
        ),
      ),
    );
  }
}
