import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.ontap,
    this.secondTheme = false,
  });
  final String title;
  final VoidCallback ontap;
  final bool secondTheme;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: secondTheme ? AppColors.kWhite : AppColors.kprimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: secondTheme
                ? AppStyles.kSemiBold16.copyWith(color: AppColors.kTitle)
                : AppStyles.kSemiBold16,
          ),
        ),
      ),
    );
  }
}
