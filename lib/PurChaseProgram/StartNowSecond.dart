import 'package:fitness/auth/LoginScreen.dart';
import 'package:fitness/profile/ProfileScreen.dart';
import 'package:flutter/material.dart';
import '../colors.dart';
import '../custom/CstAppbarWithtextimage.dart';
import '../custom/CustomButton.dart';
import '../custom/CustomText.dart';
import '../custom/CustomWidgetImage.dart';
import '../custom/Fonts.dart';
import '../onbordingpage/OnboardingPage.dart';
import '../utils/Demo_Localization.dart';
import 'PurChaseProgram.dart';

class StartNowSecond extends StatefulWidget {
  const StartNowSecond({super.key});

  @override
  State<StartNowSecond> createState() => _StartNowSecondState();
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

class _StartNowSecondState extends State<StartNowSecond> {
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
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
                child: CstAppbarWithtextimage(
                  title: '',
                  icon: Icons.arrow_back_ios,
                  // imageAsset: 'assets/images/editbtn.png',
                  // Uncomment this line to show the image
                  fontFamily: Fonts.montserrat,
                    onImageTap: (){

                    }
                ),
              ),
              /*   const SizedBox(height: 20),
               CustomWidgetImage(title: '', imageAsset: 'assets/images/logo.png',fontFamily: Fonts.anton, onTextTap: () {
                 print('Image clicked');
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => PurChaseProgram()));

                 // Add your image click logic here
               },onImageTap: () {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => PurChaseProgram()));

                 print('Image clicked');
                 // Add your image click logic here
               },),*/
               SizedBox(height:MediaQuery.of(context).size.height*0.05),
              Container(
                alignment: Alignment.center,
                child: CustomText(
                  text: DemoLocalization.of(context)!.translate('BecomeAMember').toString(),//"Become A Member",
                  fontSize: 7.0,
textAlign: TextAlign.center,
                  color: MyColorName.colorTextFour,
                  fontWeight: FontWeight.bold,
                  fontFamily: Fonts.anton,
                ),
              ),
           /*   CustomText(
                text: "I sleep best and wake up feeling most rested if ?",
                fontSize: 7.0,
                color: MyColorName.colorTextFour,
                fontWeight: FontWeight.bold,
                fontFamily: Fonts.anton,
                textAlign: TextAlign.start,
              ),*/
         /*     const SizedBox(height: 12),
              CustomText(
                text: "it just takes a minute.",
                fontSize: 4.5,
                color: MyColorName.colorTextThird,
                fontWeight: FontWeight.normal,
                fontFamily: Fonts.montserrat,
              ),
*/
              Center(
                child: Image.asset('assets/images/start2.png',width: MediaQuery.of(context).size.width/1.5,height: MediaQuery.of(context).size.height/2),
              ),
              //  const SizedBox(height: 18),
              SizedBox(height: screenSize.height/16),
              Center(
                child: CustomButton(
                  text: DemoLocalization.of(context)!.translate('STARTNOW').toString().toUpperCase(),//'START NOW'.toUpperCase(),
                  fontFamily:Fonts.anton,
                  fontSize: 22,
                  letterSpacing: 2.0,
                  color: MyColorName.colorTextThird,
                  onPressed:(){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => LoginScreen()));

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


