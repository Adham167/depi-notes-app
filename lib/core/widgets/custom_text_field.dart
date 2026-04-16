import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.ontap,
    this.obsecure = false,
    this.maxLines = 1,
    this.lightHint = false,
  });

  final String hintText;
  final IconData? icon;
  final bool obsecure;
  final bool lightHint;
  final void Function()? ontap;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.kprimary,
      obscureText: obsecure,
      maxLines: maxLines,
      textAlignVertical: TextAlignVertical.top,

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: lightHint
            ? AppStyles.kHint14.copyWith(color: AppColors.kHintprimary)
            : AppStyles.kHint14,

        prefixIcon: icon != null
            ? IconButton(onPressed: ontap, icon: Icon(icon))
            : null,

        border: CustomOutlineBorder(),
        enabledBorder: CustomOutlineBorder(),
        focusedBorder: CustomOutlineBorder().copyWith(
          borderSide: const BorderSide(color: AppColors.kprimary),
        ),
      ),
    );
  }

  OutlineInputBorder CustomOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.kStroke),
    );
  }
}
