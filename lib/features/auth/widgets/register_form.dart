import 'package:ecommerce_styliq/core/helpers/spacing.dart';
import 'package:ecommerce_styliq/core/routing/app_routes.dart';
import 'package:ecommerce_styliq/core/styling/app_colors.dart';
import 'package:ecommerce_styliq/core/styling/app_styles.dart';
import 'package:ecommerce_styliq/core/widgets/custom_text_field.dart';
import 'package:ecommerce_styliq/core/widgets/primary_button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Full Name", style: AppStyles.font16BlackMedium),
          CustomTextField(
            hintText: "Enter your full name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Text("User Name", style: AppStyles.font16BlackMedium),
          CustomTextField(
            hintText: "Enter Your email address",
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),

          verticalSpace(16),

          Text("Password", style: AppStyles.font16BlackMedium),

          CustomTextField(
            hintText: "Enter Your Password",
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),

          verticalSpace(40),

          SizedBox(
            width: double.infinity,
            child: PrimaryButtonWidget(
              buttonText: "Sign In",
              buttonColor: AppColors.primaryColor,
              fontSize: 14.sp,
              width: double.infinity,
              bordersRadius: 10,
              onPress: () {},
            ),
          ),

          const Spacer(),

          Center(
            child: Text.rich(
              TextSpan(
                text: "Already have an account? ",
                style: AppStyles.subtitlesStyles,
                children: [
                  TextSpan(
                    text: "Log In",
                    style: AppStyles.font16BlackMedium.copyWith(
                      color: AppColors.blackColor,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.go(AppRoutes.loginScreen),
                  ),
                ],
              ),
            ),
          ),

          verticalSpace(20),
        ],
      ),
    );
  }
}
