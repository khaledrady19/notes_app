import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_buttom.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children:const [
            SizedBox(height: 32,),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(height: 16,),
      
            CustomTextField(
              hint: 'content',maxLines: 5,
            ),
            SizedBox(height: 32),
            CustomButtom(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
