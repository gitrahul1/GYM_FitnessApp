import 'package:fitness/profile/PortfolioScreen.dart';
import 'package:flutter/material.dart';
import '../colors.dart';
import '../custom/CustomButton.dart';
import '../custom/CustomText.dart';
import '../custom/Fonts.dart';
import '../utils/Demo_Localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({super.key});

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  String? userName, userEmail;
  String? userId;

  @override
  void initState() {
    super.initState();
    getSharePreferences();
  }

  getSharePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userId = prefs.getString("userid");
      userName = prefs.getString("username");
      userEmail = prefs.getString("useremail");

      // print("Type=================userId get ${userId}");
     // print("Type=================userId userName ${userName}");
      //print("Type=================userId userEmail ${userEmail}");
    });
  }

  // final List<bool> checked = [false, false, false];
  final List<Map<String, dynamic>> itSubcriptionPlan = [
    {
      'month': '1 month',
      'year': 'Yearly',
      'price': '\$6.99',
    },
    {
      'month': '3 month',
      'year': 'Yearly',
      'price': '\$29.99',
    },
    {
      'month': '6 month',
      'year': 'Life-Time',
      'price': '\$49.99',
    },
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 340,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Image.asset(
                "assets/images/imgdetails.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          'assets/images/profilecircle.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: userName.toString(),
                            //DemoLocalization.of(context)!.translate('Rahul').toString(),//"Rahul",
                            fontSize: 5,
                            color: MyColorName.colorTextPrimary,
                            fontWeight: FontWeight.bold,
                            fontFamily: Fonts.roboto //Fonts.roboto,
                            ),
                        CustomText(
                            text: DemoLocalization.of(context)!
                                .translate('Trainer')
                                .toString(),
                            //"Trainer",
                            fontSize: 3,
                            color: MyColorName.colorTextPrimary,
                            fontWeight: FontWeight.normal,
                            fontFamily: Fonts.montserrat //Fonts.roboto,
                            ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: CustomText(
                          text: DemoLocalization.of(context)!
                              .translate('Portfolio')
                              .toString(),
                          //"Portfolio",
                          fontSize: 4,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.bold,
                          fontFamily: Fonts.anton //Fonts.roboto,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text:
                            "Abu Dhabi based personal trainer Rahul is a certified personal",
                        fontSize: 5,
                        color: MyColorName.colortextselectbox,
                        fontWeight: FontWeight.w700,
                        fontFamily: Fonts.montserrat //Fonts.roboto,
                        ),
                    CustomText(
                        text:
                            "Coach with extensive experience in bodybuilding, fitness, and sports.",
                        fontSize: 3,
                        color: MyColorName.colorTextPrimary,
                        fontWeight: FontWeight.normal,
                        fontFamily: Fonts.montserrat //Fonts.roboto,
                        ),
                    CustomText(
                        text:
                            "Holding a FIBA License, he has a solid footing in basketball coaching. As an ex-professional sprinter and jumper, his athletics background is robust, complemented by skills in gymnastics.",
                        fontSize: 3,
                        color: MyColorName.colorTextPrimary,
                        fontWeight: FontWeight.normal,
                        fontFamily: Fonts.montserrat //Fonts.roboto,
                        ),
                    SizedBox(
                      height: 2,
                    ),
                    CustomText(
                        text:
                            "Mohammad excels at motivating clients and possesses outstanding communication and interpersonal abilities.",
                        fontSize: 3,
                        color: MyColorName.colorTextPrimary,
                        fontWeight: FontWeight.normal,
                        fontFamily: Fonts.montserrat //Fonts.roboto,
                        ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                        text: "Mohammad Training Qualifications",
                        fontSize: 4,
                        color: MyColorName.colorfillText,
                        fontWeight: FontWeight.w700,
                        fontFamily: Fonts.montserrat //Fonts.roboto,
                        ),
                    SizedBox(
                      height: 5,
                    ),
                    //Image.asset("assets/images/imgdetails.png"),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        /*Checkbox(
                          value: checked[0],
                          onChanged: (bool? value) {
                            setState(() {
                              checked[0] = value!;
                            });
                          },
                        )*/
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'FIBA License',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Graduated Sport and Health faculty',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row( crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Graduated PE teacher',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row( crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'IOCM License',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row( crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Licensed Athletic coach',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                        text: "His Skills Include:",
                        fontSize: 4,
                        color: MyColorName.colorTextPrimary,
                        fontWeight: FontWeight.w700,
                        fontFamily: Fonts.montserrat //Fonts.roboto,
                        ),
                    SizedBox(
                      height: 5,
                    ),
                    //Image.asset("assets/images/imgdetails.png"),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        /*Checkbox(
                          value: checked[0],
                          onChanged: (bool? value) {
                            setState(() {
                              checked[0] = value!;
                            });
                          },
                        )*/

                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Personal Training For Men, Women & Children',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Strength and Conditioning',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Expertise in Bodybuilding',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Custom Fitness Program Design',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        Expanded(
                          child: CustomText(
                            text:
                                'Basketball Coaching (specialized skills and   plyometric training)',
                            fontSize: 3,
                            color: MyColorName.colorTextPrimary,
                            fontWeight: FontWeight.normal,
                            fontFamily: Fonts.montserrat,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Athletics Training (sprints to long distance)',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Gymnastics Instruction',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: ' Motivating Clients',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Communication Skills',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box),
                        CustomText(
                          text: 'Goal Setting',
                          fontSize: 3,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          fontFamily: Fonts.montserrat,
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),

                    Center(
                      child: CustomText(
                          text: DemoLocalization.of(context)!
                              .translate('SubscriptionPlan')
                              .toString(),
                          //"Subscription Plan",
                          fontSize: 8,
                          color: MyColorName.colorTextFour,
                          fontWeight: FontWeight.bold,
                          fontFamily: Fonts.anton //Fonts.roboto,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CustomText(
                          text: DemoLocalization.of(context)!
                              .translate('Itistext')
                              .toString(),
                          // "It is a long established fact that a reader will be distracted by the readable",
                          fontSize: 4,
                          color: MyColorName.colorTextPrimary,
                          fontWeight: FontWeight.normal,
                          textAlign: TextAlign.center,
                          fontFamily: Fonts.montserrat //Fonts.roboto,
                          ),
                    ),
                    Container(
                      // color: Colors.red,
                      // width: 200,
                      height: 160,
                      child: ListView.builder(
                        itemCount: 3,
                        //  physics: NeverScrollableScrollPhysics(),
                        // shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final itSubcription = itSubcriptionPlan[index];
                          final bool isSelected = index == selectedIndex;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Center(
                              child: Container(
                                // color: Colors.red,
                                // width: 110,
                                width: MediaQuery.of(context).size.width / 3.25,
                                height: 150,
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Card(
                                    margin:
                                        EdgeInsets.symmetric(vertical: 10.0),
                                    color: isSelected
                                        ? MyColorName.primaryLite
                                            .withOpacity(0.01)
                                        : MyColorName.colorinsidebox,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: BorderSide(
                                          color: isSelected
                                              ? MyColorName.coloroutlineborder
                                              : Colors.transparent,
                                          width: 2.0,
                                        )),
                                    elevation: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 36,
                                          // color: Colors.grey,
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? MyColorName.coloroutlineborder
                                                : MyColorName.colormonthbgcolor
                                                    .withOpacity(0.30),

                                            // color: MyColorName.coloroutlineborder,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              itSubcription['month']
                                                  .toUpperCase(),
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: isSelected
                                                    ? MyColorName.colorinsidebox
                                                    : MyColorName.colorfillText,
                                                fontFamily: Fonts.anton,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              itSubcription['year'],
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: isSelected
                                                    ? MyColorName
                                                        .colortextselectbox
                                                    : MyColorName
                                                        .colorTextPrimary,

                                                //color: MyColorName.primaryLite,
                                                fontFamily: Fonts.montserrat,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Text(
                                              itSubcription['price'],
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: Fonts.montserrat,
                                                color:
                                                    MyColorName.colorfillText,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            if (isSelected)
                                              Icon(
                                                Icons.check_circle,
                                                color:
                                                    MyColorName.colorTextThird,
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                          // );
                        },
                      ),
                    ),

                    Center(
                      child: CustomButton(
                        text: DemoLocalization.of(context)!
                            .translate('MakePayment')
                            .toString(),
                        //'Make Payment',
                        fontFamily: Fonts.roboto,
                        fontSize: 22,

                        color: MyColorName.colorTextThird,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => PortfolioScreen()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
