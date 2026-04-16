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
  });
  final String hintText;
  final IconData? icon;
  final bool obsecure;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.kprimary,
      obscureText: obsecure,

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.kHint12,
        prefixIcon: IconButton(onPressed: ontap, icon: Icon(icon)),
        border: CustomOutlineBorder(),
        enabledBorder: CustomOutlineBorder(),
        focusedBorder: CustomOutlineBorder().copyWith(
          borderSide: BorderSide(color: AppColors.kprimary),
        ),
      ),
    );
  }

  OutlineInputBorder CustomOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.kStroke),
    );
  }
}
