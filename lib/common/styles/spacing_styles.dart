import 'package:flutter/material.dart';
import 'package:unitask/utils/constants/sizes.dart';

class UTextSpacingStyle {
  UTextSpacingStyle._(); // private constructor

  static const EdgeInsetsGeometry paddingAppBarHeight = EdgeInsets.only(
      top: USizes.appBarHeight,
      left: USizes.defaultSpace,
      right: USizes.defaultSpace,
      bottom: USizes.defaultSpace);
}
