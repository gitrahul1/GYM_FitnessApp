import 'dart:async';
import 'package:fitness/colors.dart';
import 'package:flutter/material.dart';
import 'auth/LoginScreen.dart';
import 'bottomdrawer/homeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? userId;
  @override
  void initState() {
    super.initState();
    getSessionManage();
  /*  Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => LoginScreen()*//*MyHomePage(title: '',)*//*));

    });*/
  }
  getSessionManage() async {
    await Future.delayed(Duration(seconds: 3), () {});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userId = prefs.getString("userid");
    if(userId==null || userId==""|| userId!.isEmpty){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const LoginScreen()));
    }else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const MyHomePage(title: '',)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColorName.colorfillBOx,
        body: Center(
        child: Image.asset('assets/images/logo.png',width: MediaQuery.of(context).size.width/1.5,height: MediaQuery.of(context).size.height/2),
    ));
  }

}
