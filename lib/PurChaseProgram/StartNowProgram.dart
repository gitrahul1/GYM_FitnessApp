import 'package:fitness/onbordingpage/onboardingScreen.dart';
import 'package:flutter/material.dart';
import '../colors.dart';
import '../custom/CustomButton.dart';
import '../custom/CustomText.dart';
import '../custom/CustomWidgetImage.dart';
import '../custom/Fonts.dart';
import '../onbordingpage/OnboardingPage.dart';
import 'PurChaseProgram.dart';

class StartNowProgram extends StatefulWidget {
  const StartNowProgram({super.key});

  @override
  State<StartNowProgram> createState() => _StartNowProgramState();
}

void _validateAndSubmit() {
  //Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => RegistrationScreen()));
  /*if (_controllerEmail.text.isEmpty) {
      _showSnackbar('Please Enter your Email...');
      return null;
    }
   else {
      _showSnackbar('Please correct the errors in the form.');
    }*/
}

class _StartNowProgramState extends State<StartNowProgram> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

   /* getClickText(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => PurChaseProgram()));

    }
    getClickImage(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => PurChaseProgram()));

    }*/

    return  Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
               CustomWidgetImage(title: 'LOG IN', imageAsset: 'assets/images/logo.png',fontFamily: Fonts.anton, onTextTap: () {
                 print('Image clicked');
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => PurChaseProgram()));

                 // Add your image click logic here
               },onImageTap: () {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => PurChaseProgram()));

                 print('Image clicked');
                 // Add your image click logic here
               },),
               SizedBox(height:MediaQuery.of(context).size.height*0.05),
              Container(
                alignment: Alignment.center,
                child: CustomText(
                  text: "Get your personal plan",
                  fontSize: 7.0,
textAlign: TextAlign.center,
                  color: MyColorName.colorTextFour,
                  fontWeight: FontWeight.w400,
                  fontFamily: Fonts.anton,
                ),
              ),

              const SizedBox(height: 12),
              CustomText(
                text: "it just takes a minute.",
                fontSize: 4.5,
                color: MyColorName.colorTextThird,
                fontWeight: FontWeight.normal,
                fontFamily: Fonts.montserrat,
              ),

              Center(
                child: Image.asset('assets/images/startimage.png',width: MediaQuery.of(context).size.width/1.5,height: MediaQuery.of(context).size.height/2),
              ),
              //  const SizedBox(height: 18),
              SizedBox(height: screenSize.height/16),
              Center(
                child: CustomButton(
                  text: 'START NOW'.toUpperCase(),
                  fontFamily:Fonts.anton,
                  fontSize: 22,
                  letterSpacing: 2.0,
                  color: MyColorName.colorTextThird,
                  onPressed:(){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => OnboardingScreen()));

                  },
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ) ,
    );
  }
}


