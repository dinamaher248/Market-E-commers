import 'package:flutter/material.dart';

import '../constant/colors.dart';

class DotsIndicator extends StatelessWidget {
  final int currentIndex; 
  final int totalDots; 

  const DotsIndicator({
    super.key,
    required this.currentIndex,
    required this.totalDots,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalDots, (index) {
        bool isActive = index == currentIndex; 
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 5),
          width:  20.0, 
          height: 20.0,
          decoration: BoxDecoration(
            color: isActive ? TextColor : const Color(0xFFB2CCFF),
            borderRadius: BorderRadius.circular(20),
          ),
        );
      }),
    );
  }
}
