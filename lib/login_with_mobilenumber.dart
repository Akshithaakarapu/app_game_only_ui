import 'package:app_game/otp_modal.dart';
import 'package:flutter/material.dart';


class Login_with_mobilenumber extends StatefulWidget {
  const Login_with_mobilenumber({super.key});

  @override
  State<Login_with_mobilenumber> createState() => _Login_with_mobilenumberState();
}

class _Login_with_mobilenumberState extends State<Login_with_mobilenumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10),
       child: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.only(top: 50),
           child: Column(
            children: [
              Image.asset("images/screen_otp1.png"),
              SizedBox(height: 30,),
                  Text("Login With Your Mobile Number",style: TextStyle(color: Color(0xff121212),fontSize:16,fontWeight: FontWeight.w600),),
                  SizedBox(height: 26,),
                  Text("We will send you the 6 digit verification code",style: TextStyle(color: Color(0xff121212),fontSize:14,fontWeight: FontWeight.w500),),
                  SizedBox(height: 26,),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                   child: Column(
                  children: [
                    TextField(
                    
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail,color: Color(0xffF63E3E),),
                    labelText: 'EMAIL',
                    border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Enter mail',
                    
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  // controller: passwordController,
                  //obscureText: true,
                  decoration: InputDecoration(
                    
                    prefixIcon: Icon(Icons.person,color: Color(0xffF63E3E),),
                    labelText: 'PASSWORD',
                    border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Enter password',
                    
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text('Forgot Password?',style: TextStyle(color: Color(0xffF63E3E  ),fontSize: 14,fontWeight: FontWeight.bold,))
                  ),
                             SizedBox(height: 260,),
                       InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                            return Otp_modal_page();
                           }));
                        },
                         child: Container(
                                     height: 40,
                                     width: 343,
                                     decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF63E3E),
                                     ),
                              
                                     child:Align(alignment: Alignment.center,
                          child: Text("Get OTP",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 14,fontWeight: FontWeight.w600),))),
                       ),                    ],
                   ),
                 )
            ],
           ),
         ),
       ),
     ),
    );
  }
}