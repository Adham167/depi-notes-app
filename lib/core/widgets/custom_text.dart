import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1;
  final String text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: text1, style: AppStyles.kSubTitle14),
          TextSpan(
            text: text2,
            style: AppStyles.kBold16,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
