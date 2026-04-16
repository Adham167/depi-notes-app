
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class TopSignUpWidget extends StatelessWidget {
  const TopSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Create an Account", style: AppStyles.kBold24),
          SizedBox(height: 16),
          Text(
            "Start organizing your thoughts tody.",
            style: AppStyles.kSubTitle14,
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
