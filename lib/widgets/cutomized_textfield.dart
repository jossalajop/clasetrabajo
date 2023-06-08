import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomizedTextfield extends StatelessWidget {
  final TextEditingController myController;
  final String? hintText;
  final bool? isPassword;
  const CustomizedTextfield(
      {super.key, required this.myController, this.hintText, this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        keyboardType: isPassword! ? TextInputType.visiblePassword : TextInputType.emailAddress,
        enableSuggestions: isPassword! ? false : true,
        autocorrect: isPassword! ? false : true,
        obscureText: isPassword ?? true,
        controller: myController,
        decoration: InputDecoration(
          suffixIcon:isPassword! ? IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye, color: Colors.grey,)):null,
          enabledBorder: OutlineInputBorder(
              borderSide:const BorderSide(
                color: Color(0xffE8ECF4),
                width: 1
              ),
              borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder:OutlineInputBorder(
            borderSide:const BorderSide(color: Color(0xffE8ECF4), width: 1),
            borderRadius: BorderRadius.circular(10)
          ),
          fillColor: Color(0xffE8ECF4),
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
