import 'package:ecommerce_styliq/core/styling/app_colors.dart';
import 'package:ecommerce_styliq/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItemsListView extends StatefulWidget {
  const CategoryItemsListView({super.key});

  @override
  State<CategoryItemsListView> createState() => _CategoryItemsListViewState();
}

class _CategoryItemsListViewState extends State<CategoryItemsListView> {
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        addAutomaticKeepAlives: true,
        physics: const BouncingScrollPhysics(),
        children: List.generate(6, (value) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = value;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: selectedCategory == value
                        ? AppColors.primaryColor
                        : Colors.white,
                    border: Border.all(color: AppColors.lighterGrey),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    "All",
                    style: selectedCategory == value
                        ? AppStyles.font16BlackMedium.copyWith(
                            color: AppColors.whiteColor,
                          )
                        : AppStyles.font16BlackMedium,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
