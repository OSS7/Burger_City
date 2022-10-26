import 'package:flutter/material.dart';
import 'package:burger_city/core/constant.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool isSmall;
  const CustomTextField({Key? key, this.hint,this.controller, this.onChanged,  this.isSmall = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: isSmall ?size.width * 0.3 : size.width  * 0.8,
        child: TextField(
          onChanged: onChanged,
          controller: controller,
          decoration: InputDecoration(
            hintText: hint.toString(),
            focusedBorder:  OutlineInputBorder(
              borderSide:
              BorderSide(color: secondaryClr!, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: radius10All,
              borderSide:
              BorderSide(color: secondaryClr!, width: 1),
            ),
          ),
        ),
      ),
    );
  }
}
