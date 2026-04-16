
import 'package:depi_notes_app/core/assets/assets.dart';
import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/widgets/social_button.dart';
import 'package:flutter/material.dart';

class SpecialLoginWidget extends StatelessWidget {
  const SpecialLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialButton(
          text: "Google",
          icon: Assets.imagesGoogle,
          onTap: () {},
        ),
        const SizedBox(width: 16),
        SocialButton(
          text: "Facebook",
          icon: Assets.imagesFacebook,
          backgroundColor: Colors.blueAccent,
          textColor: AppColors.kWhite,
          onTap: () {},
        ),
      ],
    );
  }
}
