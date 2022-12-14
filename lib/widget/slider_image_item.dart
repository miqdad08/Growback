import 'package:flutter/material.dart';

class SliderImageItem extends StatelessWidget {
  final food;

  const SliderImageItem({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          food.imageUrls,
          width: 360,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
