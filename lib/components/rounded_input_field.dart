import 'package:flutter/material.dart';
import 'package:sporty/components/text_filed_container.dart';

import '../constants.dart';
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon=Icons.person,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFiedContainer(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(icon,color: kPrimaryColor,),
          border: InputBorder.none,


        ),
      ),);
  }
}