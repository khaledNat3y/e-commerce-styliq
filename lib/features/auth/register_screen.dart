import 'package:ecommerce_styliq/core/helpers/spacing.dart';
import 'package:ecommerce_styliq/core/styling/app_styles.dart';
import 'package:ecommerce_styliq/features/auth/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create an account", style: AppStyles.primaryHeadLinesStyle),
            Text(
              "Let’s create your account.",
              style: AppStyles.subtitlesStyles,
            ),
            verticalSpace(24),
            Expanded(child: RegisterForm()),
          ],
        ),
      ),
    );
  }
}
