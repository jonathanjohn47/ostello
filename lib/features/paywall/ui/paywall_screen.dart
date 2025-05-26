import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
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
      backgroundColor: Colors.white,
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
                      viewportFraction: 0.7,
                      height: 0.27.sh,
                      enlargeCenterPage: true, onPageChanged: (value, reason) {
                    getController.currentCarouselIndex.value = value.toDouble();
                  }),),
                SizedBox(height: 10.sp),
                Obx(
                        () {
                      return DotsIndicator(
                        dotsCount: 4,
                        position: getController.currentCarouselIndex.value,
                        decorator: DotsDecorator(
                          color: AppColors.lessLightGreyColor,
                          // Inactive color
                          activeColor: AppColors.purpleColor,
                          activeSize: Size(30.0.sp, 9.0.sp),
                          size: Size(9.0.sp, 9.0.sp),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      );
                    }
                ),
                SizedBox(height: 10.sp),
                Row
                  (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Cancel Anytime*", style: TextStyle(
                        fontSize: 12.sp, color: AppColors.textBlackColor),),
                  ],),
                SizedBox(height: 20.sp),
                fourOptionsButton("What does this course include?"),
                fourOptionsButton(
                    "Can I access the course content after completing it?"),
                fourOptionsButton(
                    "Are there any prerequisites for this course?"),
                fourOptionsButton(
                    "Will I get a certificate after completing the course?"),
                SizedBox(height: 20.sp),
                Obx(
                        () {
                      return paymentItem(
                          "Monthly",
                          "699",
                          "999",
                          "8.5",
                          false,
                          0,
                          getController.chipSelectedIndex.value == 0, () {
                        getController.chipSelectedIndex.value = 0;
                      });
                    }
                ), Obx(
                        () {
                      return paymentItem(
                          "Quarterly",
                          "1900",
                          "999",
                          "6.5",
                          true,
                          1,
                          getController.chipSelectedIndex.value == 1, () {
                        getController.chipSelectedIndex.value = 1;
                      });
                    }
                ), Obx(
                        () {
                      return paymentItem(
                          "Full Course",
                          "5591",
                          "999",
                          "4.5",
                          false,
                          2,
                          getController.chipSelectedIndex.value == 2, () {
                        getController.chipSelectedIndex.value = 2;
                      });
                    }
                ),
                SizedBox(height: 20.sp),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.0.sp),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Subscribe Now", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.purpleColor,
                              // Or Colors.purple
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10.r),

                              ),
                              padding: EdgeInsets.all(16.sp)
                            )),
                      ),
                    ],
                  ),
                ),

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

  Widget carouselItem(String image, String name, String description,
      bool border) {
    return border? Container(
      margin: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
      padding: EdgeInsets.all(1.sp),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFF292D32),Color(0xFF292D32), Colors.white, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(10.r),
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
          padding: EdgeInsets.all(16.0.sp),
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
                  Text(name, style: TextStyle(
                      fontSize: 13.sp, fontWeight: FontWeight.w700),),
                  RatingBar.readOnly(filledIcon: Icons.star,
                      emptyIcon: Icons.star_border,
                      initialRating: 4,
                      filledColor: AppColors.purpleColor,
                      maxRating: 4,
                      size: 10.sp
                  )
                ],)
            ],),
            SizedBox(height: 8.sp),
            Text(description, style: TextStyle(fontSize: 8.sp),)
          ],),
        ),),
    ): Container(
      margin: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
      padding: EdgeInsets.all(1.sp),
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
          padding: EdgeInsets.all(16.0.sp),
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
                  Text(name, style: TextStyle(
                      fontSize: 13.sp, fontWeight: FontWeight.w700),),
                  RatingBar.readOnly(filledIcon: Icons.star,
                      emptyIcon: Icons.star_border,
                      initialRating: 4,
                      filledColor: AppColors.purpleColor,
                      maxRating: 4,
                      size: 10.sp
                  )
                ],)
            ],),
            SizedBox(height: 8.sp),
            Text(description, style: TextStyle(fontSize: 8.sp),)
          ],),
        ),),
    );
  }

  Widget fourOptionsButton(String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 6,
            blurRadius: 8,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 14.sp),),
        trailing: Icon(Icons.chevron_right, color: AppColors.purpleColor,),
      ),);
  }

  Widget paymentItem(String title, String discountedPrice, String originalPrice,
      String perDayPrice, bool recommended, int index, bool isSelected,
      // Add index parameter
      Function() onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: 16.sp, vertical: recommended ? 24.sp : 15.sp),
            padding: EdgeInsets.all(8.sp),
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? AppColors.purpleColor : AppColors
                    .lightGreyColor,
                width: 2.0.sp,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],

            ),
            child: Row(children: [
              Radio<int>(
                value: index, // Use the index parameter
                groupValue: getController.chipSelectedIndex.value,
                onChanged: (int? value) {
                  if (value != null) {
                    getController.chipSelectedIndex.value = value;
                  }
                },
                activeColor: AppColors.purpleColor,
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight
                      .w600),),
              ),
              Text(
                "₹$discountedPrice",
                style: TextStyle(
                    color: AppColors.purpleColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600


                ),),
              SizedBox(width: 8.sp),
              Text("₹$originalPrice", style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),)
            ],),),
          !recommended ? Positioned(
            top: 6.sp,
            right: 50.sp,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 3.sp),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(
                  color: AppColors.purpleColor, // Your border color
                  width: 1.0, // Border thickness
                ),
              ),
              child: Text(
                "₹$perDayPrice per day",
                style: TextStyle(
                  color: AppColors.purpleColor,
                  fontSize: 8.sp,
                ),
              ),
            )
            ,

          ) : Positioned(top: recommended ? 13.sp : -3.sp,
              right: 50.sp,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.purpleColor,
                  borderRadius: BorderRadius.circular(24.r),
                  border: Border.all(
                    color: AppColors.purpleColor, // Your border color
                    width: 1.0, // Border thickness
                  ),
                ),
                padding: EdgeInsets.all(4.sp), // Added padding here
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(color: Colors.white, fontSize: 8.sp),
                    ),
                    SizedBox(width: 4.sp), // Adjust spacing as needed
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            20.r), // Make it circular if desired
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 6.sp, vertical: 2.sp),
                      // Added padding here
                      child: Text(
                        "₹$perDayPrice per day",
                        style: TextStyle(
                          color: AppColors.purpleColor,
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ],),))
        ],
      ),
    );
  }
}
