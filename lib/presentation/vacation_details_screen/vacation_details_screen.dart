import 'package:alberto_s_application1/core/app_export.dart';
import 'package:alberto_s_application1/widgets/custom_elevated_button.dart';
import 'package:alberto_s_application1/widgets/custom_icon_button.dart';
import 'package:alberto_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VacationDetailsScreen extends StatelessWidget {
  const VacationDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 711.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildVacationDetails(context),
                      _buildOne(context),
                      _buildDetail(context),
                    ],
                  ),
                ),
                SizedBox(height: 28.v),
                _buildTitle(context),
                SizedBox(height: 16.v),
                _buildList(context),
                SizedBox(height: 11.v),
                _buildPriceAndAction(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVacationDetails(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 400.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle22472,
              height: 400.v,
              width: 375.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 60.v,
                  right: 116.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          decoration: IconButtonStyleHelper.fillWhiteA,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.v),
                          child: Text(
                            "Vacation Details",
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 199.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 8.v,
                        margin: EdgeInsets.only(right: 43.h),
                        child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                            spacing: 8,
                            activeDotColor: theme.colorScheme.onError,
                            dotColor: appTheme.blueGray100,
                            dotHeight: 8.v,
                            dotWidth: 8.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 347.v,
          bottom: 93.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 35.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.customBorderTL30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 145.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Taj Mahal",
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLinkedin,
                        height: 13.v,
                        width: 10.h,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Text(
                        "Uttar Pradesh, India",
                        style: CustomTextStyles.labelLargeOnPrimaryContainer,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                    text: "(41 Reviews)",
                                    style: CustomTextStyles.labelLargeff78828a,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 154.v,
              ),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillGrayTL20,
                child: CustomImageView(
                  imagePath: ImageConstant.imgHeart,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDetail(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 38.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Details",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 22.v),
            SizedBox(
              width: 312.h,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor ac leo lorem nisl. Viverra vulputate sodales quis et dui, lacus. Iaculis eu egestas leo egestas vel. Ultrices ut magna nulla facilisi commodo enim, orci feugiat pharetra. Id sagittis, ullamcorper turpis ultrices platea pharetra.",
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 2.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Reviews",
            style: theme.textTheme.titleMedium,
          ),
          Text(
            "See all",
            style: CustomTextStyles.titleSmallOnError,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 45.adaptSize,
            width: 45.adaptSize,
            margin: EdgeInsets.only(bottom: 87.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jhone Kenoady",
                        style: CustomTextStyles.titleMediumSemiBold,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "23 Nov 2022",
                          style: CustomTextStyles.bodyMediumBluegray300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.v),
                  CustomRatingBar(
                    initialRating: 5,
                  ),
                  SizedBox(height: 18.v),
                  SizedBox(
                    width: 266.h,
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceAndAction(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 22.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 9.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "32 ",
                    style: CustomTextStyles.titleLargeff111111,
                  ),
                  TextSpan(
                    text: "/ Person",
                    style: CustomTextStyles.titleMediumff78828a,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomElevatedButton(
            height: 46.v,
            width: 178.h,
            text: "Book Now",
            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
            buttonTextStyle: CustomTextStyles.titleSmallPoppinsPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
