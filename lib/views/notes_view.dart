import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: IconButton(onPressed: (){
        showModalBottomSheet(context: context, builder:(context) {
          return const AddNoteBottomSheet() ;

        });
      },
       icon: const Icon(Icons.add)),
      body: const NotesViewBody(),
    );
  }
}
