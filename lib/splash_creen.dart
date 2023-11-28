import 'package:app_game/skip_1.dart';
import 'package:flutter/material.dart';

class Splash_screen_page extends StatefulWidget {
  const Splash_screen_page({super.key});

  @override
  State<Splash_screen_page> createState() => _Splash_screen_pageState();
}

class _Splash_screen_pageState extends State<Splash_screen_page> {
  void initState() {
    // TODO: implement initState
    super.initState();
    navigatetohome(); 
  }
  navigatetohome()async{
    await Future.delayed(Duration(seconds: 2),() {});
     Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) =>Skip_page_1()),
        );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      //appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(
              child: Image.asset('images/app_logo.png',
              height: 300,
              width: 300,),
            ),
            // const CircularProgressIndicator( 
            //   valueColor:  AlwaysStoppedAnimation<Color>(Colors.white),)
        ],
      ),
      
    );
  }
}