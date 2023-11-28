import 'package:app_game/login_with_mobilenumber.dart';
import 'package:app_game/skip_1.dart';
import 'package:app_game/skip_3.dart';
import 'package:flutter/material.dart';

class Skip_page_2 extends StatefulWidget {
  const Skip_page_2({super.key});

  @override
  State<Skip_page_2> createState() => _Skip_page_2State();
}

class _Skip_page_2State extends State<Skip_page_2> {
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
              Image.asset("images/skip2.png"),
              SizedBox(height: 50,),
              Image.asset("images/Current2.png"),
              SizedBox(height: 50,),
              Text("Get All Kind Of Online Gaming Spare Parts",style: TextStyle(color: Color(0xffF63E3E),fontSize:16,fontWeight: FontWeight.w600),),
              SizedBox(height: 50,),
              Text("Unlock The Missing Pieces To Your Gaming \n                               Masterpiece",style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w500),),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                          return Skip_page_1();
                         }));
                      },
                      child: Container(
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xffF63E3E),
                                    ),
                                    child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                      Icon(Icons.chevron_left_outlined,color: Color(0xffFFFFFF) ,),
                      Text("Previous",style: TextStyle(color: Color(0xffFFFFFF),fontSize:16,fontWeight: FontWeight.w600),),
                                    ],
                                    ),
                                  ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffF63E3E),
                  ),
                  child:  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                        return Skip_page_3();
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
                ),
              )
                ],
              )
          ],
        ),
      ),
    );
  }
}