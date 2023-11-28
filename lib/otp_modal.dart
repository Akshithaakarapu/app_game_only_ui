
import 'package:app_game/main.dart';
import 'package:flutter/material.dart';

class Otp_modal_page extends StatefulWidget {
  const Otp_modal_page({super.key});

  @override
  State<Otp_modal_page> createState() => _Otp_modal_pageState();
}

class _Otp_modal_pageState extends State<Otp_modal_page> {
  // final TextEditingController _fieldOne = TextEditingController();
  // final TextEditingController _fieldTwo = TextEditingController();
  // final TextEditingController _fieldThree = TextEditingController();
  // final TextEditingController _fieldFour = TextEditingController();
  // final TextEditingController _fieldFive = TextEditingController();
  // final TextEditingController _fieldsix = TextEditingController();
     // ignore: unused_field
     String? _otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/otp_model.png"),
                  SizedBox(height: 26,),
                  Text("OTP Verification",style: TextStyle(color: Color(0xff000000),fontSize:16,fontWeight: FontWeight.w600),),
                  SizedBox(height: 26,),
                  Text("Enter the OTP sent to +91 9959901862",style: TextStyle(color: Color(0xff121212),fontSize:14,fontWeight: FontWeight.w500),),
                  SizedBox(height: 26,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter OTP ",style: TextStyle(color: Color(0xff121212),fontSize:14,fontWeight: FontWeight.w500),),
                             SizedBox(height: 6,),
                              // Implement 4 input fields
                    //           Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // children: [
                    //   OtpInput(_fieldOne, true), // auto focus
                    //   OtpInput(_fieldTwo, false),
                    //   OtpInput(_fieldThree, false),
                    //   OtpInput(_fieldFour, false),
                    //   OtpInput(_fieldFive, false),
                    //   OtpInput(_fieldsix, false),
                    // ],
                    //           ),
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 241, 241, 241),
                        blurRadius: 20.0,
                        spreadRadius: 0, //New
                        offset: Offset(5, 4)
                      )
                    ],
                  border: Border.all(color: Color(0xffF63E3E)),
                  color: Color(0xffffffff)
                ),
              ),SizedBox(width:4 ,),
              Container(
                height: 48,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 241, 241, 241),
                        blurRadius: 20.0,
                        spreadRadius: 0, //New
                        offset: Offset(5, 4)
                      )
                    ],
                  border: Border.all(color: Color(0xffF63E3E)),
                  color: Color(0xffffffff)
                ),
              ),SizedBox(width:4 ,),
              Container(
                height: 48,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 241, 241, 241),
                        blurRadius: 20.0,
                        spreadRadius: 0, //New
                        offset: Offset(5, 4)
                      )
                    ],
                  border: Border.all(color: Color(0xffF63E3E)),
                  color: Color(0xffffffff)
                ),
              ),SizedBox(width:5 ,),
              Container(
                height: 48,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 241, 241, 241),
                        blurRadius: 20.0,
                        spreadRadius: 0, //New
                        offset: Offset(5, 4)
                      )
                    ],
                  border: Border.all(color: Color(0xffF63E3E)),
                  color: Color(0xffffffff)
                ),
              ),SizedBox(width:4,),
              Container(
                height: 48,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 241, 241, 241),
                        blurRadius: 20.0,
                        spreadRadius: 0, //New
                        offset: Offset(5, 4)
                      )
                    ],
                  border: Border.all(color: Color(0xffF63E3E)),
                  color: Color(0xffffffff)
                ),
              ),SizedBox(width:4,),
              Container(
                height: 48,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 241, 241, 241),
                        blurRadius: 20.0,
                        spreadRadius: 0, //New
                        offset: Offset(5, 4)
                      )
                    ],
                  border: Border.all(color: Color(0xffF63E3E)),
                  color: Color(0xffffffff)
                ),
              ),SizedBox(width:4,)
            ],
          )
 
                      ],
                    ),
                  ),
                   SizedBox(height: 16,),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn’t Receive OTO? ", style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.w500)),
                Text("RESEND OTP ", style: TextStyle(color: Color(0xffF63E3E),fontSize: 14,fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 220,),
                // ElevatedButton(
                //     onPressed: () {
                //       setState(() {
                //         _otp = _fieldOne.text +
                //             _fieldTwo.text +
                //             _fieldThree.text +
                //             _fieldFour.text +
                //             _fieldFive.text +
                //             _fieldsix.text;
                //       });
                //     },
                //     // style: ElevatedButton.styleFrom(
                //     //   primary: Color(0xffF63E3E)
                //     // ),
                //     child: Container(
                //       height: 40,
                //       width: 343,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(16),
                //         color: Color(0xffF63E3E),
                //       ),
                //       child:  Center(
                //         child: Text("Verify OTP & Continue", style: TextStyle(color: Color(0xffFFFFFF),fontSize: 14,fontWeight: FontWeight.w600),))
                //     )
                    
                //     ),
               
                // Display the entered OTP code
                // Text(
                //   _otp ?? 'Please enter OTP',
                //   style: const TextStyle(fontSize: 30),
                // )
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                      return Bottam_navigation_bar();
                     }));
                  },
                  child: Container(
                          height: 40,
                          width: 343,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffF63E3E),
                          ),
                          child:Align(alignment: Alignment.center,
                          child: Text("Verify OTP & Continue",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 14,fontWeight: FontWeight.w600),))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: 48,
  width: 50,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
      boxShadow: [
        BoxShadow(
          color: Color(0xffFFFFFF), // Shadow color
          blurRadius: 0, // Spread radius
          offset: Offset(0, 3), // Shadow offset
        ),
      ],
    ),
    child: TextField(
      autofocus: autoFocus,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      controller: controller,
      maxLength: 1,
      cursorColor: Theme.of(context).primaryColor,
      decoration: const InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffF63E3E),
          width: 2
        )
      ),
        // border: InputBorder.none, // Remove the default border
        counterText: '',
        hintStyle: TextStyle(color: Color(0xffF63E3E), fontSize: 20.0),
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  ),
);
  }
}