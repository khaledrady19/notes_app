import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_buttom.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> fromKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(height: 16,),
        
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',maxLines: 5,
          ),
          const SizedBox(height: 32),
          CustomButtom(
            onTap: () {
              if (fromKey.currentState!.validate()) {
                fromKey.currentState!.save();

                var noteModel = NoteModel(title: title!, subTitle: subTitle!,
                 date: DateTime.now().toString(), color: Colors.amber.value); 

                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);              
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
