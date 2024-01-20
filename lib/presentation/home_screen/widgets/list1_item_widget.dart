import 'package:alberto_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  const List1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle22469,
          height: 86.adaptSize,
          width: 86.adaptSize,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 6.v,
            bottom: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ledadu Beach",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                "3 days 2 nights",
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 13.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBxsMap11,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "Australia",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 35.v,
            bottom: 34.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "20",
                  style: CustomTextStyles.titleSmallff111111,
                ),
                TextSpan(
                  text: "/Person",
                  style: CustomTextStyles.labelLargeff78828a_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
