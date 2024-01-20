import 'package:alberto_s_application1/core/app_export.dart';
import 'package:alberto_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamiclistItemWidget extends StatelessWidget {
  const DynamiclistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150.v,
            width: 156.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle22468,
                  height: 150.v,
                  width: 156.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    right: 8.h,
                  ),
                  child: CustomIconButton(
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillPrimaryContainer,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBxsHeart11,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "Tahiti Beach",
            style: CustomTextStyles.titleSmallOnPrimary,
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBxsMap11,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Polynesia, ",
                        style: CustomTextStyles.labelMediumff78828a,
                      ),
                      TextSpan(
                        text: "French ",
                        style: CustomTextStyles.labelMediumff78828a,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Text(
                "235",
                style: CustomTextStyles.titleSmallOnPrimaryBold,
              ),
              Container(
                width: 63.h,
                margin: EdgeInsets.only(left: 57.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSignal,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "4.4 ",
                              style: CustomTextStyles.labelLargeffffcd19,
                            ),
                            TextSpan(
                              text: "(32)",
                              style: CustomTextStyles.labelLargeff78828a,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
