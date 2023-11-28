import 'package:app_game/login_with_mobilenumber.dart';
import 'package:app_game/skip_2.dart';
import 'package:flutter/material.dart';

class Skip_page_3 extends StatefulWidget {
  const Skip_page_3({super.key});

  @override
  State<Skip_page_3> createState() => _Skip_page_3State();
}

class _Skip_page_3State extends State<Skip_page_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            // Text("Skip",style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.w700),),
              SizedBox(height: 80,),
              Image.asset("images/skip3.png"),
              SizedBox(height: 50,),
              Image.asset("images/Current3.png"),
              SizedBox(height: 50,),
              Text("Repair & Services",style: TextStyle(color: Color(0xffF63E3E),fontSize:16,fontWeight: FontWeight.w600),),
              SizedBox(height: 50,),
              Text("Empower Your Gaming Journey With Our \n                               Provided Services",style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w500),),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                          return Skip_page_2();
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
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                        return Login_with_mobilenumber();
                       }));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login",style: TextStyle(color: Color(0xffFFFFFF),fontSize:16,fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                ),
              )
                ],
              ),
      
      
             
          ],
        ),
      ),
    );
  }
}