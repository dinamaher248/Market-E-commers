import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketi_ecommers/core/routing/app_router.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/image_pathes.dart';
import '../../../../core/widgets/core/custom_button.dart';
import '../../../../core/widgets/core/custom_text__widget.dart';

class CongratulationResetPass extends StatelessWidget {
  const CongratulationResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.w, left: 3.h),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: BorderColor,
                          width: 2,
                        ),
                      ),
                      child: Center(
                          child: IconButton(
                        icon: Icon(
                          Icons.arrow_left_outlined,
                          size: 5.h,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Center(
                child: Image.asset(
                  ImagePathes.image9,
                  width: 200.w,
                  height: 30.h,
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              textAlign: TextAlign.center,
              "Congratulations",
              style: GoogleFonts.poppins(
                color: TextColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              width: 95.w,
              child: CustomTextWidget(
                text:
                    "You have updated the password. please login again with your latest password",
                textAlign: TextAlign.center,
                color: const Color(0xff51526C),
                fontSize: 15.7.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            CustomButton(
                textcolor: Colors.white,
                groundColor: PrimaryColor,
                button: "Log In",
                onPressed: () {
                   context.push(AppRouter.loginPath);
                }),
          ],
        ),
      ),
    );
  }
}
