import '../home_screen/widgets/dynamiclist_item_widget.dart';
import '../home_screen/widgets/list1_item_widget.dart';
import '../home_screen/widgets/list_item_widget.dart';
import 'package:alberto_s_application1/core/app_export.dart';
import 'package:alberto_s_application1/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:alberto_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:alberto_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:alberto_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:alberto_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:alberto_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:alberto_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 19.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      right: 3.h,
                    ),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Search...",
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildList(context),
                  SizedBox(height: 27.v),
                  _buildTitle(context),
                  SizedBox(height: 15.v),
                  _buildDynamicList(context),
                  SizedBox(height: 28.v),
                  _buildTitle1(context),
                  SizedBox(height: 15.v),
                  _buildList1(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.img170,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Hi, Andy",
              margin: EdgeInsets.only(right: 16.h),
            ),
            SizedBox(height: 1.v),
            Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgBxsMap11,
                ),
                AppbarSubtitle(
                  text: "Netherlands",
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 5.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return SizedBox(
      height: 97.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 21.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 3.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Frequently visited\r",
            style: CustomTextStyles.titleMedium18,
          ),
          Container(
            height: 8.v,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 9.v,
            ),
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDynamicList(BuildContext context) {
    return SizedBox(
      height: 230.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 4.h,
          right: 3.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return DynamiclistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "On Budget Tour",
            style: CustomTextStyles.titleMedium18,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "See All",
              style: CustomTextStyles.titleSmallOnError,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildList1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return List1ItemWidget();
        },
      ),
    );
  }
}
