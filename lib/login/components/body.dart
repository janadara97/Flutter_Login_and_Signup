import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sporty/Sign_Up/signup_screen.dart';
import 'package:sporty/components/RoundedPasswordField.dart';
import 'package:sporty/components/already_have_an_account.dart';
import 'package:sporty/components/rounded_button.dart';
import 'package:sporty/components/rounded_input_field.dart';


import 'background.dart';

class body extends StatelessWidget {
  const body({
    Key key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return background(child: 
    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
          SizedBox(
            height: size.height*0.05,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height*0.3,
          ),
          SizedBox(
            height: size.height*0.03,
          ),

          RoundedInputField(
            hintText: "Your Email",
            onChange: (value) {},
          ),

          RoundedPasswordField(
            hintText: "Password",
            onChange: (value){
            },
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          AlreadyhaveAnAccountCheck(press: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context){
              return SignUpScreen();
            },
            ),
            );
          },)
        ],
      ),
    ),);
  }
}









