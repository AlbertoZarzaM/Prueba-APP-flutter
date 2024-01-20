import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  // Label text style
  static get labelLargeAmber400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff78828a => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF78828A),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff78828a_1 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF78828A),
      );
  static get labelLargeffffcd19 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFCD19),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumff78828a => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF78828A),
      );
  // Title text style
  static get titleLargeff111111 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF111111),
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff009b8d => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF009B8D),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff111111 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF111111),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff78828a => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF78828A),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.64),
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallff111111 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF111111),
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}
