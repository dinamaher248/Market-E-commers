import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../constant/app_router.dart';
import '../constant/colors.dart';
import '../constant/image_pathes.dart';
import '../widgets/custom_button.dart';
import '../widgets/dots_Indicator.dart';
import '../widgets/onboarding_widget.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
              child: OnboardingWidget(
            text1: "Welcome to Marketi",
            text2:
                "Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.",
            image: ImagePathes.image1,
            indexOfDOt: 0,
            
          )),
           Spacer(),
          Loginbutton(
            button: "Next",
            onPressed: () {
              context.push(AppRouter.onBoarding2Path);
            },
            groundColor: PrimaryColor,
            textcolor: Colors.white,
          ),
          SizedBox(height: 5.h,)
        ],
      ),
    );
  }
}
