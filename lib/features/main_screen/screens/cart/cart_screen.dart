import 'package:ecommerce_styliq/core/helpers/spacing.dart';
import 'package:ecommerce_styliq/core/widgets/primary_button_widget.dart';
import 'package:ecommerce_styliq/features/main_screen/screens/cart/widgets/cart_item_widget.dart';
import 'package:ecommerce_styliq/features/main_screen/screens/cart/widgets/title_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Container(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(20),
              CartItemWidget(),
              CartItemWidget(),
              CartItemWidget(),
              verticalSpace(20),
              TitlePriceWidget(title: "Sub Total", price: "1190 \$"),
              TitlePriceWidget(title: "VAT (16 %)", price: "1190 \$"),
              TitlePriceWidget(title: "Shipping Fees", price: "1190 \$"),
              verticalSpace(20),
              Divider(),
              verticalSpace(20),
              TotalPriceWidget(title: "Total", price: "1190 \$"),
              verticalSpace(20),
              PrimaryButtonWidget(
                buttonText: "Go To Checkout",
                trailingIcon: Icon(
                  Icons.payment,
                  color: Colors.white,
                  size: 16.sp,
                ),
                onPress: () {},
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
