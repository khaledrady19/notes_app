import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, 
  required this.title, this.onPressed});
 
  final IconData icon;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
         Text(title,style: const TextStyle(fontSize: 28)),
        CustomSearchIcon(icon: icon,
        onPressed: onPressed,),
      ],
    );
  }
}
