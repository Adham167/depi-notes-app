import 'package:depi_notes_app/core/di/service_locator.dart';
import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/add_note_use_case.dart';
import 'package:depi_notes_app/feature/notes/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:depi_notes_app/feature/notes/presentation/views/widgets/create_note_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateNoteView extends StatelessWidget {
  const CreateNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(addNoteUseCase: getIt<AddNoteUseCase>()),
      child: Scaffold(
          backgroundColor: AppColors.kBackGround,
          appBar: AppBar(
            backgroundColor: AppColors.kBackGround,
            centerTitle: true,
            elevation: 0,
            title: Text("Create Note", style: AppStyles.kBold24),
          ),
          body: CreateNoteViewBody(),
        ),
    );
  }
}
