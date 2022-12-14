import 'package:flutter/material.dart';
import 'package:growback/utils/app_color.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, this.isActive = false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: isActive ? AppColor.primary : Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(12))
        ),
      ),
    );
  }
}
