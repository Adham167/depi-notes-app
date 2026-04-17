import 'package:depi_notes_app/core/routing/app_router.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/core/widgets/custom_button.dart';
import 'package:depi_notes_app/core/widgets/custom_text_field.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';
import 'package:depi_notes_app/feature/notes/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateNoteViewBody extends StatefulWidget {
  const CreateNoteViewBody({super.key});

  @override
  State<CreateNoteViewBody> createState() => _CreateNoteViewBodyState();
}

class _CreateNoteViewBodyState extends State<CreateNoteViewBody> {
  final TextEditingController title = TextEditingController();
  final TextEditingController content = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    title.dispose();
    content.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          title.clear();
          content.clear();

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Note Added Successfully")),
          );
        }

        if (state is AddNoteFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Note Title", style: AppStyles.kRegular16),
                  const SizedBox(height: 8),

                  CustomTextField(
                    hintText: "Enter note title",
                    lightHint: true,
                    textEditingController: title,
                  ),

                  const SizedBox(height: 16),

                  Text("Content", style: AppStyles.kRegular16),
                  const SizedBox(height: 8),

                  CustomTextField(
                    hintText: "Enter note content",
                    maxLines: 4,
                    lightHint: true,
                    textEditingController: content,
                  ),

                  const Spacer(),

                  CustomButton(
                    title: state is AddNoteLoading ? "Saving..." : "Save Notes",
                    ontap: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<AddNoteCubit>().addNote(
                          NoteEntity(
                            id: UniqueKey().toString(),
                            title: title.text,
                            content: content.text,
                            createdAt: DateTime.now(),
                          ),
                        );
                      }
                    },
                  ),

                  const SizedBox(height: 8),

                  CustomButton(
                    title: "View Notes",
                    ontap: () {
                      GoRouter.of(context).push(AppRouter.kNotesView);
                    },
                    secondTheme: true,
                  ),

                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
