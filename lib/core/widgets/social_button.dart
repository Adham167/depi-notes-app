import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String icon;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onTap;

  const SocialButton({
    super.key,
    required this.text,
    required this.icon,
    this.backgroundColor,
    this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.kStroke),
            color: backgroundColor ?? AppColors.kWhite,
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  icon,
                  height: 28,
                ),
                const SizedBox(width: 8),
                Text(
                  text,
                  style: AppStyles.kRegular16.copyWith(
                    color: textColor ?? Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}