import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ostello/utility/app_colors.dart';

import '../get_controllers/paywall_get_controller.dart';

class PaywallScreen extends StatelessWidget {
  PaywallScreen({super.key});

  final PaywallGetController getController = Get.put(PaywallGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return mobileUi();
            } else {
              return webUi();
            }
          },
        ),
      ),
    );
  }

  Widget mobileUi() {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0.sp, top: 8.sp),
              child: CircleAvatar(
                child: Icon(Icons.close, size: 20.sp, color: Colors.white),
                radius: 15.r,
                backgroundColor: AppColors.greyColor,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "The Ultimate Fluency\nMastery Course",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.sp),
                Image.asset("assets/images/giftbox.png", height: 73.sp),
                SizedBox(height: 20.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "23",
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "HRS",
                          style: TextStyle(
                            fontSize: 8.sp,
                            color: AppColors.purpleColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8.sp),
                    Container(
                      width: 1.sp,
                      height: 25.23.sp,
                      color: AppColors.darkGreyColor,
                    ),
                    SizedBox(width: 8.sp),
                    Column(
                      children: [
                        Text(
                          "55",
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "MIN",
                          style: TextStyle(
                            fontSize: 8.sp,
                            color: AppColors.purpleColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8.sp),
                    Container(
                      width: 1.sp,
                      height: 25.23.sp,
                      color: AppColors.darkGreyColor,
                    ),
                    SizedBox(width: 8.sp),
                    Column(
                      children: [
                        Text(
                          "39",
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "SEC",
                          style: TextStyle(
                            fontSize: 8.sp,
                            color: AppColors.purpleColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: (16.0)),
                  child: Row(
                    children: [
                      Expanded(child: fourOptionsWithImage(
                          "assets/images/live_classes.png",
                          "Live Classes Access")),
                      Expanded(child: fourOptionsWithImage(
                          "assets/images/ai_voice.png",
                          "AI Voice Doubt Solver")),
                      Expanded(
                        child: fourOptionsWithImage(
                            "assets/images/learning_materials.png",
                            "Learning Materials"),
                      ),
                      Expanded(child: fourOptionsWithImage(
                          "assets/images/gamified_ai.png",
                          "Gamified AI Exercises")),
                    ],
                  ),
                ),
                SizedBox(height: 20.sp),
                CarouselSlider(
                  items: [
                    carouselItem(
                        "assets/images/john_anderson.png", "John Anderson",
                        "Their attention to detail and creative design approach transformed our website into a visually stunning and highly functional platform. We’ve seen a 30% increase in traffic since the relaunch. I highly recommend them to anyone seeking professional web design services!")
                  ],
                  options: CarouselOptions(
                      viewportFraction: 0.6,
                      height: 0.2.sh,
                      enlargeCenterPage: true),)
              ],
            ),
          ),
        ),
      ],
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
            height: 48.sp,
            width: 48.sp,
          ),
        ),
        SizedBox(height: 8.sp),
        Text(title,
          style: TextStyle(fontSize: 11.sp),
          textAlign: TextAlign.center,)
      ],
    );
  }

  Widget carouselItem(String image, String name, String description) {
    return Card(child: Padding(
      padding:  EdgeInsets.all(16.0.sp),
      child: Column(children: [
        Row(children: [
          CircleAvatar(
            radius: 20.sp,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(width: 8.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(name, style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w700),),
            RatingBar.readOnly(filledIcon: Icons.star,
                emptyIcon: Icons.star_border,
                initialRating: 4,
                filledColor: AppColors.purpleColor,

                maxRating: 4
            )
          ],)
        ],)
      ],),
    ), color: Colors.white,);
  }
}
