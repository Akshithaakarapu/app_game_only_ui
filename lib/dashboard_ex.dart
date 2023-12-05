import 'package:app_game/add_product.dart';
import 'package:app_game/delete.dart';
import 'package:app_game/update_page.dart';
import 'package:flutter/material.dart';

class Dashboard_ex extends StatefulWidget {
  const Dashboard_ex({required this.dashboard_img, required this.dashboard_text, required this.dashboars_rupee,required this.dashboards_star,});
  final String dashboard_img;
  final String dashboard_text;
  final String dashboars_rupee;
  final String dashboards_star;

  @override
  State<Dashboard_ex> createState() => _Dashboard_exState();
}

class _Dashboard_exState extends State<Dashboard_ex>
    with SingleTickerProviderStateMixin { 
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //appBar: AppBar(),
      body:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    height: 218,
                    width: 160,
                    decoration: BoxDecoration(
                       boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 221, 220, 220),
                              blurRadius: 20.0,
                              spreadRadius: 0, //New
                              offset: Offset(8, 5,)
                            )
                          ],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1,color: Color.fromARGB(255, 213, 212, 212)),
                      color: Color(0xffFFFFFF)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Image.network(widget.dashboard_img,width: 100,height: 85,),
                        SizedBox(height: 10,),
                        Text(widget.dashboard_text,style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w500)),
                       SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
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
                      SizedBox(height: 12,),
                        Container(
                          width: 100,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Color.fromARGB(255, 238, 237, 237)),
                            color: Color(0xffFFFFFF)
                          ),
                          child: Row(
                            children: [
                            Image.asset("images/trali.png"),
                           
                           InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                return Add_product_list();
                               }));
                            },
                             child: Container(
                              height: 85,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffF63E3E),
                              ),
                              child: Image.asset('images/pluseicon.png')),
                           ),
                           InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                return Delete_page();
                               }));
                            },
                             child: Container(
                              height: 85,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffF63E3E),
                              ),
                              child: Icon(Icons.delete,color: Colors.white,)),
                           ),
                           InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                return Update_page();
                               }));
                            },
                             child: Container(
                              height: 85,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffF63E3E),
                              ),
                              child: Icon(Icons.delete,color: Colors.white,)),
                           ),
                          ]),
                        )
                      ],
                    ),
                    ),
                  )
    );
  }
}