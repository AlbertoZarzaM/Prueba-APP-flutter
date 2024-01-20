import 'package:alberto_s_application1/core/app_export.dart';
import 'package:alberto_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup5,
            ),
          ),
          SizedBox(height: 15.v),
          Text(
            "Airport",
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
