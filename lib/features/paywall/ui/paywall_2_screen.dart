import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

import '../../../utility/app_colors.dart';
import '../get_controllers/paywall_2_get_controller.dart';

class Paywall2Screen extends StatelessWidget {
  Paywall2Screen({super.key});

  final Paywall2GetController getController = Get.put(Paywall2GetController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PixelPerfect(
          assetPath: 'assets/images/paywall2_pixel_perfect.png',
          child: Scaffold(
            body: OrientationBuilder(
              builder: (context, orientation) {
                if (orientation == Orientation.portrait) {
                  return mobileUi();
                } else {
                  return webUi();
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget mobileUi() {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.sp, top: 12.sp),
                child: CircleAvatar(
                  child: Icon(Icons.close, size: 20.sp, color: Colors.white),
                  radius: 15.r,
                  backgroundColor: AppColors.greyColor,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0.sp),
                      child: Text(
                        "The Ultimate Fluency\nMastery Course",
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.4,
                          height: 1.3,
                          wordSpacing: -3,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Image.asset("assets/images/mega_offer.png", height: 190.sp,),
          SizedBox(height: 8.sp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: (40.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: fourOptionsWithImage(
                    "assets/images/live_classes.png",
                    "Live Classes Access")),
                SizedBox(width: 10.sp),
                Expanded(child: fourOptionsWithImage(
                    "assets/images/ai_voice.png",
                    "AI Voice Doubt Solver")),
                SizedBox(width: 10.sp),
                Expanded(
                  child: fourOptionsWithImage(
                      "assets/images/learning_materials.png",
                      "Learning Materials"),
                ),
                SizedBox(width: 10.sp),
                Expanded(child: fourOptionsWithImage(
                    "assets/images/gamified_ai.png",
                    "Gamified AI Exercises")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget webUi() {
    return Container();
  }

  Widget fourOptionsWithImage(String image, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.sp),
            color: AppColors.lightGreyColor,
          ),
          child: Image.asset(
            image,
            height: 40.sp,
            width: 40.sp,
          ),
        ),
        SizedBox(height: 8.sp),
        Text(title,
          style: TextStyle(fontSize: 10.sp),
          textAlign: TextAlign.center,)
      ],
    );
  }
}
