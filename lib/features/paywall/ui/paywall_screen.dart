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
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.sp),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.sp),
                            color: AppColors.lightGreyColor,
                          ),
                          child: Image.asset(
                            "assets/images/live_classes.png",
                            height: 48.sp,
                            width: 48.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
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
}
