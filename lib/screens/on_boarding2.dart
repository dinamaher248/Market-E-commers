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

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
              child: OnboardingWidget(
            text1: "Easy to Buy",
            text2:
                "Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.",
            image: ImagePathes.image2,
            indexOfDOt: 1,
            
          )),
          Spacer(),
          Loginbutton(
            button: "Next",
            onPressed: () {
              context.push(AppRouter.onBoarding3Path);
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
