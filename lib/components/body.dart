import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sporty/Sign_Up/signup_screen.dart';
import 'package:sporty/constants.dart';
import 'package:sporty/login/login_screen.dart';
import 'background.dart';
import 'rounded_button.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size; //this size provide us total height and width of our screen


    return Background(
      child:SingleChildScrollView(
        child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome To SPORTY",style: TextStyle(
          fontWeight: FontWeight.bold,
            fontSize: 23,
        ),
        ),
          SizedBox(height: size.height*0.05,),
          SvgPicture.asset(
              "assets/icons/chat.svg",
          height: size.height*0.45,),
          SizedBox(height: size.height*0.05,),

          RoundedButton(
            color: kPrimaryColor,
            text: "LOGIN",
            textColor: Colors.white,
            press:(){Navigator.push(context, MaterialPageRoute(builder: (context) {return LoginScreen();},),);},
          ),
          RoundedButton(
            color:kPrimaryLightColor,
            text: "SIGN UP",
            textColor: Colors.black,
            press:(){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context){
                    return SignUpScreen();
                  },
              ),
              );
            },
          ),

        ],
    ),
      ),);
  }
}





