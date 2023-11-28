import 'package:app_game/login_with_mobilenumber.dart';
import 'package:app_game/skip_2.dart';
import 'package:flutter/material.dart';

class Skip_page_1 extends StatefulWidget {
  const Skip_page_1({super.key});

  @override
  State<Skip_page_1> createState() => _Skip_page_1State();
}

class _Skip_page_1State extends State<Skip_page_1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Align( alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 14),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                      return Login_with_mobilenumber();
                     }));
                  },
                  child: Text("Skip",style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.w700),)),
              )),
              SizedBox(height: 80,),
              Image.asset("images/skip1.png"),
               SizedBox(height: 50,),
              Image.asset("images/Current1.png"),
               SizedBox(height: 50,),
              Text("Get All Kind Of Online Gaming Products",style: TextStyle(color: Color(0xffF63E3E),fontSize:16,fontWeight: FontWeight.w600),),
               SizedBox(height: 50,),
              Text("Where The Game Never Ends, And The \n                  Deals Are Epic!",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500),),
               SizedBox(height: 50,),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffF63E3E),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                      return Skip_page_2();
                     }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Next",style: TextStyle(color: Color(0xffFFFFFF),fontSize:16,fontWeight: FontWeight.w600),),
                      Icon(Icons.chevron_right_outlined,color: Color(0xffFFFFFF) ,)
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}