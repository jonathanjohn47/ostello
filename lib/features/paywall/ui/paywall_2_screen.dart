import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/foundation.dart';
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
        kDebugMode ? PixelPerfect(
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
        ) : Scaffold(
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
                          letterSpacing: -0.5,
                          height: 1.2,
                          wordSpacing: 0.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                  SizedBox(height: 8.sp),
                  Image.asset("assets/images/mega_offer.png", height: 190.sp),
                  SizedBox(height: 8.sp),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: (20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: fourOptionsWithImage(
                            "assets/images/live_classes.png",
                            "Live Classes Access",
                          ),
                        ),
                        SizedBox(width: 10.sp),
                        Expanded(
                          child: fourOptionsWithImage(
                            "assets/images/ai_voice.png",
                            "AI Voice Doubt Solver",
                          ),
                        ),
                        SizedBox(width: 10.sp),
                        Expanded(
                          child: fourOptionsWithImage(
                            "assets/images/learning_materials.png",
                            "Learning Materials",
                          ),
                        ),
                        SizedBox(width: 10.sp),
                        Expanded(
                          child: fourOptionsWithImage(
                            "assets/images/gamified_ai.png",
                            "Gamified AI Exercises",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  CarouselSlider(
                    items: [
                      Obx(() {
                        return carouselItem(
                          "assets/images/john_anderson.png",
                          "John Anderson",
                          "Their attention to detail and creative design approach transformed our website into a visually stunning and highly functional platform. We’ve seen a 30% increase in traffic since the relaunch. I highly recommend them to anyone seeking professional web design services!",
                          getController.currentCarouselIndex.value == 0,
                        );
                      }),
                      Obx(() {
                        return carouselItem(
                          "assets/images/john_anderson.png",
                          "John Anderson",
                          "Their attention to detail and creative design approach transformed our website into a visually stunning and highly functional platform. We’ve seen a 30% increase in traffic since the relaunch. I highly recommend them to anyone seeking professional web design services!",
                          getController.currentCarouselIndex.value == 1,
                        );
                      }),
                      Obx(() {
                        return carouselItem(
                          "assets/images/john_anderson.png",
                          "John Anderson",
                          "Their attention to detail and creative design approach transformed our website into a visually stunning and highly functional platform. We’ve seen a 30% increase in traffic since the relaunch. I highly recommend them to anyone seeking professional web design services!",
                          getController.currentCarouselIndex.value == 2,
                        );
                      }),
                      Obx(() {
                        return carouselItem(
                          "assets/images/john_anderson.png",
                          "John Anderson",
                          "Their attention to detail and creative design approach transformed our website into a visually stunning and highly functional platform. We’ve seen a 30% increase in traffic since the relaunch. I highly recommend them to anyone seeking professional web design services!",
                          getController.currentCarouselIndex.value == 3,
                        );
                      }),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 0.66,
                      height: 0.18.sh,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      onPageChanged: (value, reason) {
                        getController.currentCarouselIndex.value =
                            value.toDouble();
                      },
                    ),
                  ),

                  Obx(() {
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
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    );
                  }),
                  SizedBox(height: 6.sp),
                  Stack(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 19.sp),
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 0.45.sw,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(text: "Extend 4 Days "),
                                    TextSpan(
                                      text: "Free Trial ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "for Full Access"),
                                  ],
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                    letterSpacing: -0.9,
                                    height: 1.3,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "₹7",
                                      style: TextStyle(
                                        fontSize: 60.sp,
                                        color: AppColors.purpleColor,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 12.0.sp),
                                      child: Text(
                                        "₹14",
                                        style: TextStyle(
                                          fontSize: 32.sp,
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration
                                              .lineThrough,
                                          decorationThickness:
                                          2.5, // Increase thickness here
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 73.sp,
                                  child: Text(
                                    "Then ₹699 for Quarterly",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.lightGreyColor,
                                      fontSize: 11.5.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.sp),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0.sp),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.purpleColor,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.sp,
                                    vertical: 10.sp,
                                  ),
                                  minimumSize: Size(double.infinity, 0),
                                  // Make button full width
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.sp),
                                  ),
                                ),
                                child: Text(
                                  "Extend 4 Days Free Trial",
                                  style: TextStyle(fontSize: 14.sp,
                                      color: Colors.white,
                                      letterSpacing: -1),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.sp),
                            Text(
                              "Cancel Anytime*",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.darkGreyColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 1.sp),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0.sp,
                        child: Image.asset(
                          "assets/images/special_discount.png",
                          height: 35.sp,
                          width: 100.sp,
                        ),
                      ),
                    ],
                  ),
                  ... List.generate(3, (index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0.sp),
                          child: ListTile(title: Padding(
                            padding: EdgeInsets.only(left: 8.0.sp),
                            child: Text(
                              "Will I get a certificate after completing the course?",
                              style: TextStyle(fontSize: 11.sp,
                                  letterSpacing: 0,
                                  wordSpacing: 0,
                                  height: 2.2),),
                          ), trailing: Icon(Icons.chevron_right),),
                        ),),
                    );
                  })
                ],
              ),
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
          child: Image.asset(image, height: 40.sp, width: 40.sp),
        ),
        SizedBox(height: 2.sp),
        Text(
          title,
          style: TextStyle(fontSize: 10.sp),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

Widget carouselItem(String image,
    String name,
    String description,
    bool border,) {
  return border
      ? Container(
    margin: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
    padding: EdgeInsets.all(1.sp),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF292D32),
          Color(0xFF292D32),
          Colors.white,
          Colors.white,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
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
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15.sp,
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(width: 8.sp),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 9.5.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    RatingBar.readOnly(
                      filledIcon: Icons.star,
                      emptyIcon: Icons.star_border,
                      initialRating: 4,
                      filledColor: AppColors.purpleColor,
                      maxRating: 4,
                      size: 9.sp,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.sp),
            Text(
              description,
              style: TextStyle(
                fontSize: 7.sp,
                letterSpacing: 0.5,
                wordSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    ),
  )
      : Container(
    margin: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
    padding: EdgeInsets.all(1.sp),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF292D32),
          Color(0xFF292D32),
          Colors.white,
          Colors.white,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(6.r),
    ),
    child: Container(
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
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15.sp,
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(width: 8.sp),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 9.5.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    RatingBar.readOnly(
                      filledIcon: Icons.star,
                      emptyIcon: Icons.star_border,
                      initialRating: 4,
                      filledColor: AppColors.purpleColor,
                      maxRating: 4,
                      size: 9.sp,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.sp),
            Text(
              description,
              style: TextStyle(fontSize: 6.5.sp, letterSpacing: -1.8),
            ),
          ],
        ),
      ),
    ),
  );
}
