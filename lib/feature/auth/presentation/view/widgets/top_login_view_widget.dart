import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class TopLoginWidget extends StatelessWidget {
  const TopLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Quick Notes", style: AppStyles.kBold24),
          SizedBox(height: 16),
          Text(
            "Capture your thoughts instantly.",
            style: AppStyles.kSubTitle14,
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
