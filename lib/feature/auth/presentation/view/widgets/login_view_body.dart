import 'package:depi_notes_app/core/routing/app_router.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/core/widgets/custom_button.dart';
import 'package:depi_notes_app/core/widgets/custom_text.dart';
import 'package:depi_notes_app/core/widgets/custom_text_field.dart';
import 'package:depi_notes_app/feature/auth/presentation/view/widgets/top_login_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopLoginWidget(),

            Text("Email", style: AppStyles.kRegular16),
            SizedBox(height: 8),
            // CustomTextField(hintText: "name@example.com"),
            SizedBox(height: 16),
            Text("Password", style: AppStyles.kRegular16),
            // CustomTextField(hintText: "*************"),
            SizedBox(height: 24),
            CustomButton(
              title: "Login",
              ontap: () {
                GoRouter.of(context).push(AppRouter.kCreateNoteView);
              },
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                text1: "Don't have an account? ",
                text2: "Register",
                onTap: () => GoRouter.of(context).push(AppRouter.kSignUp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
