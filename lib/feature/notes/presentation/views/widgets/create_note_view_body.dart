import 'package:depi_notes_app/core/routing/app_router.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/core/widgets/custom_button.dart';
import 'package:depi_notes_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateNoteViewBody extends StatelessWidget {
  const CreateNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Note Title", style: AppStyles.kRegular16),
            SizedBox(height: 8),
            CustomTextField(hintText: "Enter  note title", lightHint: true),
            SizedBox(height: 16),
            Text("Content", style: AppStyles.kRegular16),
            SizedBox(height: 8),
            CustomTextField(
              hintText: "Enter  note content",
              maxLines: 4,
              lightHint: true,
            ),
            Spacer(),
            CustomButton(title: "Save Notes", ontap: () {}),
            SizedBox(height: 8),
            CustomButton(
              title: "View Notes",
              ontap: () {
                GoRouter.of(context).push(AppRouter.kNotesView);
              },
              secondTheme: true,
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
