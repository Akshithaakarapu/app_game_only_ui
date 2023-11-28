

import 'package:flutter/material.dart';

class My_order_screen extends StatefulWidget {
  const My_order_screen({super.key});

  @override
  State<My_order_screen> createState() => _My_order_screenState();
}

class _My_order_screenState extends State<My_order_screen> {
  List<dynamic> my_order_img = [
    'images/my_order1.png',
    'images/my_order2.png',
    'images/my_order3.png',
  ];
  List<dynamic> my_order_text = [
    'Grand Theft Auto 5-GTA 5 V PS5\nAction-Adventure Open World',
    'Electronic Arts FIFA 23 | Standard Edition |\nPS5 (PlayStation 5)',
    'Sony Playstation 5 Official Dual\n Sense Controller Black',
  ];
  List<dynamic> my_order_rupee = [
    '1,999',
    '2,766',
    '5,599',
  ];
   List<dynamic> my_order_date = [
    'Delivered 12 Oct, Thursday',
    'Delivered 08 Oct, Sunday',
    'Delivered 06 Oct, Friday',
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 74,
         title: Text("My Orders ",style: TextStyle(color: Color(0xff000000),fontSize:16,fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Color(0xffFFFFFF),
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xffF63E3E),),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
              child: Column(children: [
                SizedBox(height: 16,),
                Container(
                  height: 32,
                  width: 184,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1,color: Color(0xff121212))
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/arrow_back.png"),
                      SizedBox(width: 5,),
                      Text("Oct / 2023",style: TextStyle(color: Color(0xff121212),fontSize:14,fontWeight: FontWeight.w600)),
                       SizedBox(width: 5,),
                      Icon(Icons.chevron_right_outlined,color: Color(0xffF63E3E),)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(height: 141,width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 237, 236, 236)),
                  color: Color(0xffFFFFFF)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("images/cart_tv.png"),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                        Text("ASUS ROG Swift OLED Gaming\nMonitor ",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                        SizedBox(height: 8,),
                        Text("Qty: 1 ",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                        SizedBox(height: 8,),
                        Row(
                          
                          children: [
                        Text("Total Price:",style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w400)),
                        Image.asset("images/rupee2.png",color: Color(0xff121212)),
                        Text("2,33,720",style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w500)),
                          ],
                        )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 23,
                            width: 172,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                             color: Color(0xFFebebeb)
                            ),
                            child:Align(
                              alignment: Alignment.center,
                              child: Text("Arriving On 15 Oct, Monday",style: TextStyle(color: Color(0xff4BBD5D),fontSize:12,fontWeight: FontWeight.w600))),
                          ),
                             Container(
                            height: 20,
                            width: 72,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF63E3E)
                            ),
                            child:Align(
                              alignment: Alignment.center,
                              child: Text(" tails",style: TextStyle(color: Color(0xffFFFFFF),fontSize:10,fontWeight: FontWeight.w600))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 365,
                  child: ListView.builder(
                  itemCount: my_order_img.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(height: 141,width: 343,
                                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color.fromARGB(255, 237, 236, 236)),
                      color: Color(0xffFFFFFF)
                                ),
                                child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(my_order_img[index]),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                            Text(my_order_text[index],style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                            SizedBox(height: 8,),
                            Text("Qty: 1 ",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                            SizedBox(height: 8,),
                            Row(
                              
                              children: [
                            Text("Total Price:",style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w400)),
                            Image.asset("images/rupee2.png",color: Color(0xff121212)),
                            Text(my_order_rupee[index],style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w500)),
                              ],
                            )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 23,
                                width: 172,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                     color: Color(0xFFebebeb)
                                ),
                                child:Align(
                                  alignment: Alignment.center,
                                  child: Text(my_order_date[index],style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w600))),
                              ),
                                 Container(
                                height: 20,
                                width: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffF63E3E)
                                ),
                                child:Align(
                                  alignment: Alignment.center,
                                  child: Text("View Details",style: TextStyle(color: Color(0xffFFFFFF),fontSize:10,fontWeight: FontWeight.w600))),
                              ),
                            ],
                          )
                        ],
                      ),
                                ),
                                ),
                    );
                  }),
                ),
              ],),
            ),
          ),
          
        ],
      ),
    );
  }
}