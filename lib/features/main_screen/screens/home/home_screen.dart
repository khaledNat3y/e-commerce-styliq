import 'package:ecommerce_styliq/core/helpers/spacing.dart';
import 'package:ecommerce_styliq/core/styling/app_colors.dart';
import 'package:ecommerce_styliq/core/styling/app_styles.dart';
import 'package:ecommerce_styliq/core/widgets/product_card.dart';
import 'package:ecommerce_styliq/features/main_screen/screens/home/widgets/category_items_list_view.dart';
import 'package:ecommerce_styliq/features/main_screen/screens/home/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        Duration duration = const Duration(seconds: 2);
        await Future.delayed(duration);
      },
      color: AppColors.primaryColor,
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text("Discover", style: AppStyles.primaryHeadLinesStyle),
          verticalSpace(16),
          Row(
            children: [
              Expanded(child: SearchTextField()),
              horizontalSpace(8),
              Container(
                height: 56.h,
                width: 56.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: const Icon(Icons.filter_list, color: Colors.white),
              ),
            ],
          ),
          verticalSpace(16),
          // category items: all, men, women, kids
          CategoryItemsListView(),
          verticalSpace(8),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  image: "assets/images/shoes.png",
                  name: "shoes",
                  price: "50",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
