
import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          Expanded(child: Divider(color: AppColors.kStroke)),
          SizedBox(width: 8),
          Text("Or CONTINUE WITH", style: AppStyles.kSubTitle14),
          SizedBox(width: 8),
          Expanded(child: Divider(color: AppColors.kStroke)),
        ],
      ),
    );
  }
}
