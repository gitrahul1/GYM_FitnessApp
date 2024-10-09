import 'package:fitness/profile/ProfileDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../colors.dart';
import '../custom/CstAppbarWithtextimage.dart';
import '../custom/CustomButton.dart';
import '../custom/CustomText.dart';
import '../custom/Fonts.dart';
import '../utils/Demo_Localization.dart';

import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final List<Map<String, dynamic>> items = [
    {
      'title': '1 month videos',
      'image': 'assets/images/profileimg1.png',
      'subtitle': 'Full Shot man Stretching Arm',
      'details': 'View more details',
      'level': 'Beginner',
      'time': '30 min'
    },
    {
      'title': '3 month videos',
      'image': 'assets/images/profileimg2.png',
      'subtitle': 'Half Shot man Running',
      'details': 'View more details',
      'level': 'Intermediate',
      'time': '30 min'
    },
    {
      'title': '6 month videos',
      'image': 'assets/images/profileimg3.png',
      'subtitle': 'Full Shot man Stretching Arm',
      'details': 'View more details',
      'level': 'Advanced',
      'time': '30 min'
    },
  ];

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

  String? userName,userEmail;
  String? userId;


  // String? userEmailget;

  void fetchUserEmail() {
    User? user = FirebaseAuth.instance.currentUser; // Get the current user
    if (user != null) {
      userEmail = user.email; // Fetch and store the email
    }
  }

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
    //  print("Type=================userId userName ${userName}");
    //  print("Type=================userId userEmail ${userEmail}");
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                CstAppbarWithtextimage(
                  title: DemoLocalization.of(context)!.translate('Profile').toString(),//'Profile',
                  icon: Icons.arrow_back_ios,
                  imageAsset: 'assets/images/editbtn.png',
                  // Uncomment this line to show the image
                  fontFamily: Fonts.roboto,
                    onImageTap: (){

                    }
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/profilecircle.png'),
                  ),
                ),
                CustomText(
                    text: userName.toString(),//DemoLocalization.of(context)!.translate('Rahul').toString(),//"Rahul",
                    fontSize: 6,
                    color: MyColorName.colorTextPrimary,
                    fontWeight: FontWeight.bold,
                    fontFamily: Fonts.roboto //Fonts.roboto,
                    ),
                ListView.builder(
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Container(
                      // height: screenSize.height * 0.15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: item['title'],
                              fontSize: 5,
                              color: MyColorName.colorTextPrimary,
                              fontWeight: FontWeight.bold,
                              fontFamily: Fonts.anton //Fonts.roboto,
                              ),
                          Image.asset(item['image'],width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  text: item['subtitle'],
                                  fontSize: 3.5,
                                  color: MyColorName.colorTextPrimary,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: Fonts.montserrat //Fonts.roboto,
                                  ),
                              CustomText(
                                  text: item['details'],
                                  fontSize: 3,
                                  color: MyColorName.colorTextPrimary,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: Fonts.anton //Fonts.roboto,
                                  ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  text: item['level'],
                                  fontSize: 3,
                                  color: MyColorName.colorTextPrimary,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: Fonts.montserrat //Fonts.roboto,
                                  ),
                              CustomText(
                                  text: "   |   ",
                                  fontSize: 3,
                                  color: MyColorName.colorTextPrimary,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: Fonts.montserrat //Fonts.roboto,
                                  ),
                              Container(
                                child: const Icon(
                                  Icons.watch_later_outlined,
                                  size: 14,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              CustomText(
                                  text: item['time'],
                                  fontSize: 3,
                                  color: MyColorName.colorTextPrimary,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: Fonts.montserrat //Fonts.roboto,
                                  ),
                            ],
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Divider(),
                          SizedBox(
                            width: 3,
                          ),
                        ],
                      ),
                    );
                    // );
                  },
                ),
                CustomText(
                    text: DemoLocalization.of(context)!.translate('SubscriptionPlan').toString(),//"Subscription Plan",
                    fontSize: 8,
                    color: MyColorName.colorTextFour,
                    fontWeight: FontWeight.bold,
                    fontFamily: Fonts.anton //Fonts.roboto,
                    ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CustomText(
                      text:DemoLocalization.of(context)!.translate('Itistext').toString(),// "It is a long established fact that a reader will be distracted by the readable",
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
                            width: MediaQuery.of(context).size.width/3.25,
                            height: 150,
                            child: Padding(
                              padding:  EdgeInsets.all(4.0),
                              child: Card(

                                margin: EdgeInsets.symmetric(vertical: 10.0),
                                color: isSelected ? MyColorName.primaryLite.withOpacity(0.01) : MyColorName.colorinsidebox,

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(
                                      color: isSelected ? MyColorName.coloroutlineborder : Colors.transparent,
                                      width: 2.0,
                                    )),

                                elevation: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 36,
                                      // color: Colors.grey,
                                      decoration: BoxDecoration(
                                        color: isSelected ? MyColorName.coloroutlineborder : MyColorName.colormonthbgcolor.withOpacity(0.30),

                                        // color: MyColorName.coloroutlineborder,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Center(
                                        child:Text(
                                          itSubcription['month'].toUpperCase(),

                                          style: TextStyle(
                                            fontSize: 12,
                                            color: isSelected ? MyColorName.colorinsidebox : MyColorName.colorfillText,
                                            fontFamily: Fonts.anton,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 16,),
                                    Column(
                                      children: [
                                        Text(
                                          itSubcription['year'],
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: isSelected ? MyColorName.colortextselectbox : MyColorName.colorTextPrimary,

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
                                            color: MyColorName.colorTextThird,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                        if (isSelected)
                                          Icon(
                                            Icons.check_circle,
                                            color: MyColorName.colorTextThird,
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
                    text: DemoLocalization.of(context)!.translate('MakePayment').toString(),//'Make Payment',
                    fontFamily: Fonts.roboto,
                    fontSize: 22,
                    color: MyColorName.colorTextThird,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => ProfileDetailsScreen()));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CustomText(
                      text:DemoLocalization.of(context)!.translate('webringtext').toString(),//  "We bring the most deserving ones to flattery with just a hate payment of \$199 those who are softened and corrupted by present pleasures",
                      fontSize: 3,
                      color: MyColorName.coloroutlineborder,
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.center,
                      fontFamily: Fonts.montserrat //Fonts.roboto,
                      ),
                ),
              ],
            )),
      ),
    );
  }
}
