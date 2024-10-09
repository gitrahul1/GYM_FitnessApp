import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../custom/CustomText.dart';
import '../custom/CustomWidget.dart';
import '../custom/Fonts.dart';
import '../utils/Demo_Localization.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              CustomTextWidget(title: "",fontFamily: Fonts.montserrat,icon: Icons.arrow_back_ios,imageAsset: ""),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: CustomText(
                  text: DemoLocalization.of(context)!.translate('NutritionandLifestyleQuestionnairesScoreSheet').toString(),//"Nutrition and Lifestyle Questionnaires Score Sheet",
                  fontSize: 7.0,
                  color: MyColorName.colorTextFour,
                  fontWeight: FontWeight.bold,
                  fontFamily: Fonts.anton,
                  textAlign: TextAlign.start,
                ),
              ),
SizedBox(height: 15,),
              Center(
                child: Image.asset('assets/images/rectanglescore.png',width: MediaQuery.of(context).size.width/0.2,height: MediaQuery.of(context).size.height/2),
              ),
              SizedBox(height: 20,),
             Row(
               children: [
                 Text("Name : ",style: TextStyle(fontSize: 16,fontFamily: Fonts.roboto,fontWeight: FontWeight.normal,color: MyColorName.colorTextThird),),

                 Text("Rahul Raj ",style: TextStyle(fontSize: 16,fontFamily: Fonts.roboto,fontWeight:  FontWeight.normal,color: MyColorName.colorTextThird),)
               ],
             ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Data 1 : 20/07/2024",style: TextStyle(fontSize: 16,fontFamily: Fonts.roboto,fontWeight:  FontWeight.normal,color: MyColorName.colorTextThird),),

                  Text("Data 2 :  25/07/2024",style: TextStyle(fontSize: 16,fontFamily: Fonts.roboto,fontWeight:  FontWeight.normal,color: MyColorName.colorTextThird),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
