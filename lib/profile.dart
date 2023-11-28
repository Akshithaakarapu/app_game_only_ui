import 'package:flutter/material.dart';

class Profilr_page extends StatefulWidget {
  const Profilr_page({super.key});

  @override
  State<Profilr_page> createState() => _Profilr_pageState();
}

class _Profilr_pageState extends State<Profilr_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 74,
         title: Text("Profile",style: TextStyle(color: Color(0xff000000),fontSize:16,fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Color(0xffFFFFFF),
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xffF63E3E),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("images/profile.png"),
                  Text("Naveen Kumar Polagani",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(height: 10,),
                  Text("Mobile Number",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                  TextField(
                    cursorColor: Colors.black,
                   decoration: InputDecoration(
                    suffixIcon: Image.asset("images/coloreditor.png"),
                   ),
                  ),SizedBox(height: 30,),
                  Text("Email ID",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                  TextField(
                    cursorColor: Colors.black,
                   decoration: InputDecoration(
                    suffixIcon: Image.asset("images/coloreditor.png"),
                   ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 40,
                    width: 343,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromARGB(97, 234, 232, 232)),
                    color: Color.fromARGB(255, 252, 249, 249)
                  ),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                      Text("Default Delivery Address",style: TextStyle(color: Color(0xffF63E3E),fontSize:12,fontWeight: FontWeight.w500)),
                                      Text("Naveen Kumar........., 500055",style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w400))   
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 18,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1,color: Color(0xffF63E3E))
                          ),
                          child:Align(
                            alignment: Alignment.center,
                            child: Text("CHANGE",style: TextStyle(color: Color(0xffF63E3E),fontSize:10,fontWeight: FontWeight.w600))),
                        
                        ),
                      )
                    ],
                  ),
                  ),
                  SizedBox(height: 20,),
                  Divider(color: Color(0xff121212),),
                  SizedBox(height: 20,),
                  Container(
                    height: 46,
                    width: 375,
                    color: Color.fromARGB(255, 231, 230, 230),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Image.asset("images/profile_fav.png"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                        Text("My Wish List",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("images/arrow_pro.png"),
                          ],
                        ),
                         ],
                    ),
                  ),
                  SizedBox(height: 20,),
                 Container(
                    height: 46,
                    width: 375,
                    color: Color.fromARGB(255, 231, 230, 230),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                        children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 12),
                             child: Image.asset("images/Frame.png"),
                           ),
                           SizedBox(
                              width: 20,
                            ),
                        Text("Account Settings",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                        ],
                       ),
                        Row(
                          children: [
                            Image.asset("images/arrow_pro.png"),
                          ],
                        ),
                         ],
                    ),
                  ),
                  SizedBox(height: 20,),
                 Container(
                    height: 46,
                    width: 375,
                    color: Color.fromARGB(255, 231, 230, 230),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Image.asset("images/bx_support.png"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                        Text("Help & Support",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("images/arrow_pro.png"),
                          ],
                        ),
                         ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );

  }
}