import 'package:flutter/material.dart';
import 'package:sporty/components/text_filed_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final IconData suffixIcon;
  final ValueChanged<String> onChange;
  const RoundedPasswordField({
    Key key,
    this.hintText,
    this.icon=Icons.lock,
    this.suffixIcon=Icons.visibility,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFiedContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChange,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(suffixIcon,color:kPrimaryColor,),
          border: InputBorder.none,
          hintText:hintText,
        ),
      ),

    );
  }
}