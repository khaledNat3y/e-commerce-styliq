import 'package:ecommerce_styliq/core/helpers/spacing.dart';
import 'package:ecommerce_styliq/core/styling/app_styles.dart';
import 'package:ecommerce_styliq/features/auth/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login to your account",
              style: AppStyles.primaryHeadLinesStyle,
            ),
            Text(
              "It’s great to see you again.",
              style: AppStyles.subtitlesStyles,
            ),
            verticalSpace(24),
            Expanded(child: LoginForm()),
          ],
        ),
      ),
    );
  }
}
