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

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
              child: OnboardingWidget(
            text1: "Wonderful User Experience",
            text2:
                "Start exploring now and experience the convenience of online shopping at its best.",
            image: ImagePathes.image3,
            indexOfDOt: 2,
           
          )),
          Spacer(),
          Loginbutton(
            button: "Get Start",
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
