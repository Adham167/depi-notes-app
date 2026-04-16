import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static final kBold24 = TextStyle(
    color: AppColors.kTitle,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
  static final kBold16 = TextStyle(
    color: AppColors.kprimary,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static final kRegular16 = TextStyle(
    color: AppColors.kTitle,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final kSemiBold16 = TextStyle(
    color: AppColors.kWhite,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static final kHint12 = TextStyle(
    color: AppColors.kHintText,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static final kSubTitle14 = TextStyle(
    color: AppColors.kSubTitle,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
