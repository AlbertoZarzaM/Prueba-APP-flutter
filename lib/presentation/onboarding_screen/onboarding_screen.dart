import 'package:alberto_s_application1/core/app_export.dart';
import 'package:alberto_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSubtract,
                height: 490.v,
                width: 375.h,
              ),
              SizedBox(height: 33.v),
              Container(
                width: 297.h,
                margin: EdgeInsets.symmetric(horizontal: 38.h),
                child: Text(
                  "We are here to make your holiday easier",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Opacity(
                opacity: 0.8,
                child: Container(
                  width: 271.h,
                  margin: EdgeInsets.only(
                    left: 52.h,
                    right: 50.h,
                  ),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallBluegray400.copyWith(
                      height: 1.57,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                text: "Get Started",
                margin: EdgeInsets.symmetric(horizontal: 24.h),
              ),
              SizedBox(height: 28.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don’t have an account? ",
                      style: CustomTextStyles.titleMediumff111111,
                    ),
                    TextSpan(
                      text: "Register",
                      style: CustomTextStyles.titleMediumff009b8d,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
