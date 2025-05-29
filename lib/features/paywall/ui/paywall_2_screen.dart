import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
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
          SizedBox(height: 8.sp),
          CarouselSlider(
            items: [
              Obx(
                      () {
                    return carouselItem(
                        "assets/images/john_anderson.png",
                        "John Anderson",
                        "Their attention to detail and creative design approach transformed our website into a visually stunning and highly functional platform. We’ve seen a 30% increase in traffic since the relaunch. I highly recommend them to anyone seeking professional web design services!",
                        getController.currentCarouselIndex.value == 0);
                  }
              ),
              Obx(
                      () {
                    return carouselItem(
                        "assets/images/john_anderson.png",
                        "John Anderson",
                        "Their attention to detail and creative design approach transformed our website into a visually stunning and highly functional platform. We’ve seen a 30% increase in traffic since the relaunch. I highly recommend them to anyone seeking professional web design services!",
                        getController.currentCarouselIndex.value == 1);
                  }
              ),
              Obx(
                      () {
                    return carouselItem(
                        "assets/images/john_anderson.png",
                        "John Anderson",
                        "Their attention to detail and creative design approach transformed our website into a visually stunning and highly functional platform. We’ve seen a 30% increase in traffic since the relaunch. I highly recommend them to anyone seeking professional web design services!",
                        getController.currentCarouselIndex.value == 2);
                  }
              ),
              Obx(
                      () {
                    return carouselItem(
                        "assets/images/john_anderson.png",
                        "John Anderson",
                        "Their attention to detail and creative design approach transformed our website into a visually stunning and highly functional platform. We’ve seen a 30% increase in traffic since the relaunch. I highly recommend them to anyone seeking professional web design services!",
                        getController.currentCarouselIndex.value == 3);
                  }
              ),
            ],
            options: CarouselOptions(
                viewportFraction: 0.6,
                height: 0.18.sh,
                enlargeCenterPage: true, onPageChanged: (value, reason) {
              getController.currentCarouselIndex.value = value.toDouble();
            }),),
          SizedBox(height: 2.sp),
          Obx(
                  () {
                return DotsIndicator(
                  dotsCount: 4,
                  position: getController.currentCarouselIndex.value,
                  fadeOutLastDot: false,
                  fadeOutDistance: 0,
                  animate: true,
                  decorator: DotsDecorator(
                    color: AppColors.lessLightGreyColor,
                    // Inactive color
                    activeColor: AppColors.purpleColor,
                    activeSize: Size(30.0.sp, 7.0.sp),
                    size: Size(7.0.sp, 7.0.sp),
                    spacing: EdgeInsets.symmetric(horizontal: 2.0.sp),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                );
              }
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


Widget carouselItem(String image, String name, String description,
    bool border) {
  return border? Container(
    margin: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
    padding: EdgeInsets.all(1.sp),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xFF292D32),Color(0xFF292D32), Colors.white, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
      borderRadius: BorderRadius.circular(6.r),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 8,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.sp, vertical: 13.sp),
        child: Column(children: [
          Row(children: [
            CircleAvatar(
              radius: 15.sp,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(width: 8.sp),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(
                    fontSize: 9.5.sp, fontWeight: FontWeight.w700),),
                RatingBar.readOnly(filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    initialRating: 4,
                    filledColor: AppColors.purpleColor,
                    maxRating: 4,
                    size: 9.sp
                )
              ],)
          ],),
          SizedBox(height: 8.sp),
          Text(description,
            style: TextStyle(fontSize: 7.sp, letterSpacing: 0.2, wordSpacing: 0.2),)
        ],),
      ),),
  ): Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.r),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 3,
          blurRadius: 8,
          offset: const Offset(0, 0), // changes position of shadow
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 10.sp),
      child: Column(children: [
        Row(children: [
          CircleAvatar(
            radius: 15.sp,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(width: 8.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(
                  fontSize: 9.5.sp, fontWeight: FontWeight.w700),),
              RatingBar.readOnly(filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  initialRating: 4,
                  filledColor: AppColors.purpleColor,
                  maxRating: 4,
                  size: 9.sp
              )
            ],)
        ],),
        SizedBox(height: 8.sp),
        Text(description,
          style: TextStyle(fontSize: 6.5.sp, letterSpacing: -1.8),)
      ],),
    ),);
}