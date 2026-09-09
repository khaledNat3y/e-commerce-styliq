import 'package:ecommerce_styliq/core/helpers/spacing.dart';
import 'package:ecommerce_styliq/core/routing/app_routes.dart';
import 'package:ecommerce_styliq/core/styling/app_colors.dart';
import 'package:ecommerce_styliq/core/styling/app_styles.dart';
import 'package:ecommerce_styliq/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(thickness: 1, color: AppColors.lighterGrey, height: 1),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                child: Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: AppStyles.subtitlesStyles.copyWith(
                            fontSize: 16.sp,
                          ),
                        ),
                        Text("\$1000", style: AppStyles.font24BlackSemiBold),
                      ],
                    ),

                    const Spacer(),

                    PrimaryButtonWidget(
                      buttonText: "Add to Cart",
                      onPress: () {
                        context.goNamed(AppRoutes.cartScreen);
                      },
                      width: 160.w,
                      height: 56.h,
                      prefixIcon: Icons.shopping_bag_outlined,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Container(
                    height: 341.h,
                    width: 341.w,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  verticalSpace(12),
                  Text(
                    "Fit Polo T Shirt",
                    style: AppStyles.font24BlackSemiBold,
                  ),
                  verticalSpace(8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amberAccent),
                      horizontalSpace(8),
                      Text("4.0/5", style: AppStyles.font16BlackMedium),
                      horizontalSpace(2),
                      Text(
                        "(45 reviews)",
                        style: AppStyles.subtitlesStyles.copyWith(
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(8),
                  // description
                  Text(
                    "Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of ThemBlue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them",
                    style: AppStyles.subtitlesStyles.copyWith(fontSize: 16),
                  ),
                  verticalSpace(8),
                ],
              ),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   child:
          // ),
        ],
      ),
    );
  }
}
