import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sporty/Sign_Up/components/background.dart';
import 'package:sporty/Sign_Up/components/or_devider.dart';
import 'package:sporty/Sign_Up/components/social_icon.dart';
import 'package:sporty/components/RoundedPasswordField.dart';
import 'package:sporty/components/already_have_an_account.dart';
import 'package:sporty/components/rounded_button.dart';
import 'package:sporty/components/rounded_input_field.dart';
import 'package:sporty/constants.dart';
import 'package:sporty/login/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Background(child: 
    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          SvgPicture.asset(""
              "assets/icons/signup.svg",
          height: size.height*0.35,
          ),
          SizedBox(
            height: size.height*0.05,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChange: (value){},
          ),
          RoundedPasswordField(
            hintText: "Password",
            onChange: (value){},
          ),
          RoundedButton(
            text: "SIGNUP",
            press: (){},
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          AlreadyhaveAnAccountCheck(
            login: false,
            press: (){
              Navigator.push(
                context,MaterialPageRoute(
                builder: (context){
                  return LoginScreen();
                  },
              ),
              );
              },
          ),
          OrDevider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: (){},
              ),
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                press: (){},
              ),
              SocialIcon(
                iconSrc: "assets/icons/google-plus.svg",
                press: (){},
              ),
            ],
          ),
        ],
      ),
    ),);
  }
}




