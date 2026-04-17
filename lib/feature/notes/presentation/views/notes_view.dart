import 'package:depi_notes_app/core/di/service_locator.dart';
import 'package:depi_notes_app/core/styles/colors/app_colors.dart';
import 'package:depi_notes_app/core/styles/text_styles/app_styles.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/delete_note_use_case.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/get_note_by_id.dart';
import 'package:depi_notes_app/feature/notes/domain/usecases/get_notes_use_case.dart';
import 'package:depi_notes_app/feature/notes/presentation/manager/cubit/get_by_id_cubit.dart';
import 'package:depi_notes_app/feature/notes/presentation/manager/delete_note_cubit/delete_note_cubit.dart';
import 'package:depi_notes_app/feature/notes/presentation/manager/get_notes_cubit/notes_cubit.dart';
import 'package:depi_notes_app/feature/notes/presentation/views/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GetByIdCubit(getNoteByIdUseCase: getIt<GetNoteByIdUseCase>()),
        ),
        BlocProvider(
          create: (context) =>
              DeleteNoteCubit(deleteNoteUseCase: getIt<DeleteNoteUseCase>()),
        ),
        BlocProvider(
          create: (context) =>
              GetNotesCubit(getNotesUseCase: getIt<GetNotesUseCase>())
                ..getNotes(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.kBackGround,
        appBar: AppBar(
          backgroundColor: AppColors.kBackGround,
          centerTitle: true,
          title: Text("Notes List", style: AppStyles.kBold24),
        ),
        body: BlocConsumer<GetNotesCubit, GetNotesState>(
          listener: (context, state) {
            if (state is GetNotesFailure) {
              print(state.errMessage);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errMessage)));
            }
          },
          builder: (context, state) {
            if (state is GetNotesLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is GetNotesSuccess) {
              return state.notes.isNotEmpty
                  ? NotesViewBody(notes: state.notes)
                  : const Center(child: Text("Empty"));
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
