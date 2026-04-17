import 'package:depi_notes_app/core/routing/app_router.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/core/widgets/custom_button.dart';
import 'package:depi_notes_app/core/widgets/custom_text.dart';
import 'package:depi_notes_app/core/widgets/custom_text_field.dart';
import 'package:depi_notes_app/feature/auth/presentation/view/widgets/divider_widget.dart';
import 'package:depi_notes_app/feature/auth/presentation/view/widgets/special_login_widget.dart';
import 'package:depi_notes_app/feature/auth/presentation/view/widgets/top_sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopSignUpWidget(),

            Text("Full Name", style: AppStyles.kRegular16),
            SizedBox(height: 8),
            // CustomTextField(hintText: "Full Name"),
            SizedBox(height: 16),
            Text("Email", style: AppStyles.kRegular16),
            SizedBox(height: 8),
            // CustomTextField(hintText: "name@example.com"),
            SizedBox(height: 16),
            Text("Password", style: AppStyles.kRegular16),
            // CustomTextField(hintText: "*************"),
            SizedBox(height: 24),
            CustomButton(title: "Register",ontap: (){},),
            SizedBox(height: 16),
            DividerWidget(),
            SizedBox(height: 16),
            SpecialLoginWidget(),

            SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                text1: "Already have an account? ",
                text2: "Login",
                onTap: () => GoRouter.of(context).push(AppRouter.kLoginView),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
