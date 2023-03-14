import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap,  this.isLoading=false});
  
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child:  Center(
          child: isLoading ?  const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              color: Colors.black,
              
            ),
          )  : const Text('Add',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
        ),
      ),
    );
  }
}