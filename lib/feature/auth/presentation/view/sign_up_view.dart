import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/feature/auth/presentation/view/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackGround,
      body: SignUpViewBody(),
    );
  }
}
