import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int pageIndex = 0;

  List<Widget> image = [
    Image.asset('assets/images/carousel_bottom.png'),
    Image.asset('assets/images/carousel_bottom.png'),
    Image.asset('assets/images/carousel_bottom.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount: image.length,
                itemBuilder: (context, index, realIndex) {
                  final imageA = image[index];
                  return buildImage(imageA, index);
                },
                options: CarouselOptions(
                    height: 65,
                    viewportFraction: 0.7,
                    onPageChanged: ((index, reason) =>
                        setState((() => pageIndex = index))))),
          ],
        ));
  }

  Widget buildImage(Widget image, int index) {
    return Container(
      child: image,
    );
  }


}