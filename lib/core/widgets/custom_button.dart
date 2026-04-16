import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.kprimary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text(title, style: AppStyles.kSemiBold16)),
    );
  }
}
