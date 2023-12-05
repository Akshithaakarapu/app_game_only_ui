import 'package:app_game/Gaming_Monitors.dart';
import 'package:flutter/material.dart';

class All_products_ex extends StatefulWidget {
  const All_products_ex({required this.dashboard_img,required this.dashboard_text,required this.dashboars_rupee, required this.dashboards_star});
  final String dashboard_img;
  final String dashboard_text;
  final String dashboars_rupee;
  final String dashboards_star;


  @override
  State<All_products_ex> createState() => _All_products_exState();
}

class _All_products_exState extends State<All_products_ex> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(),
      body: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                            height: 350,
                            width: 160,
                            decoration: BoxDecoration(
                               boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 239, 237, 237),
                                          blurRadius: 20.0,
                                          spreadRadius: 0, //New
                                        )
                                      ],
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(width: 1,color: Color.fromARGB(255, 213, 212, 212)),
                              color: Color(0xffFFFFFF)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                InkWell(onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                    return Gameimg_monitors_page();
                                   }));
                                },
                                  child: Image.network(widget.dashboard_img,width: 100,height: 85,)),
                                SizedBox(height: 10,),
                                Text(widget.dashboard_text,style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w500)),
                               SizedBox(height: 12,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset("images/rupee.png"),
                                             SizedBox(width: 5,),
                                          Text(widget.dashboars_rupee,style: TextStyle(color: Color(0xff121212),fontSize:10,fontWeight: FontWeight.w700)),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset("images/star.png"),
                                            SizedBox(width: 5,),
                                          Text(widget.dashboards_star,style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w400)),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              SizedBox(height: 16,),
                                Container(
                                  width: 89,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xffFFFFFF)
                                  ),
                                  child: Row(children: [
                                    Image.asset("images/trali.png"),
                                    SizedBox(width: 8,),
                                    Text("Add To Cart",style: TextStyle(color: Color(0xffF63E3E),fontSize:10,fontWeight: FontWeight.w600)),
                                  ]),
                                )
                              ],
                            ),
                           ),
                          )
    );
  }
}