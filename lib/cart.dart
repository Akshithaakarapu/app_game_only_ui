import 'package:app_game/cart_2.dart';
import 'package:flutter/material.dart';

class Cart_page extends StatefulWidget {
  const Cart_page({super.key});

  @override
  State<Cart_page> createState() => _Cart_pageState();
}

class _Cart_pageState extends State<Cart_page> {
  
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 74,
         title: Text("Cart",style: TextStyle(color: Color(0xff000000),fontSize:16,fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Color(0xffececec),
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xffF63E3E),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           
            Container(
                width: 375,
                height: 201,
                color: Color(0xffD9D9D9),
                child: Column(
                  children: [
                     SizedBox(height: 14,),
                    Row(  
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 80,right: 16),
                          child: Column(
                                children: [
                              Image.asset("images/round-favorite.png"),
                              SizedBox(height: 40,),
                              Image.asset("images/arrow_left.png"),
                             
                            ],
                          ),
                        ),
                        Image.asset("images/game_monitorsimg.png"),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 80,left: 16),
                          child: Column(
                            children: [
                                  Image.asset("images/tabler_share.png"),
                                   SizedBox(height: 40,),
                                  Image.asset("images/arrow_right.png"),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                     Image.asset("images/game_monitors_cousal.png")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text("ASUS ROG Swift OLED Gaming Monitor",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                      SizedBox(height: 8,),
                Text("Size: 50 Inches",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                SizedBox(height: 8,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                Text("Qty: 1",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                Row(
                  children: [
                    Container(
                      height: 18,
                      width: 19,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1,color: Color(0xffF63E3E))
                        // color: Color(0xffF63E3E)
                      ),
                      child: Image.asset("images/-ve.png"),
                    ),
                    SizedBox(width: 8,),
                    Image.asset("images/1.png"),
                    SizedBox(width: 8,),
                    Container(
                      height: 18,
                      width: 19,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffF63E3E)
                      ),
                      child: Image.asset("images/plus.png"),
                    ),
                  ],
                ),
                ]),
                ),
                SizedBox(height: 8,),
                 Row(
                  children: [
                      Text("MRP",style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)),
                      Image.asset("images/rupee1.png",color: Color(0xff121212)),
                      Text("2,50,720",style: TextStyle(color: Color(0xff121212),fontSize:14,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)),
                      SizedBox(width: 5,),
                      Text("(10%off)",style: TextStyle(color: Color(0xffF63E3E),fontSize:12,fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text("Total:",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                    Image.asset("images/rupee2.png",color: Color(0xff121212)),
                    Text("2,33,720",style: TextStyle(color: Color(0xff121212),fontSize:14,fontWeight: FontWeight.w700)),
                    ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 32,
                  width: 343,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 221, 220, 220),
                                          blurRadius: 20.0,
                                          spreadRadius: 0, //New
                                        )
                                      ],
                    border: Border.all(color: Color.fromARGB(255, 232, 231, 231)),
                    color: Color(0xffffffff)
                  ),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,),
                        child: Row( 
                          children: [
                            Text("Have Any Coupons",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w400)),
                        Text(" APPLY HERE",style: TextStyle(color: Color(0xffF63E3E),fontSize:12,fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset("images/dwon_arrow.png"),
                        ),
                      ),
                        ],
                  ),
                    ),
                    SizedBox(height: 5,),
                    Divider(color: Color(0xff121212)),
                    SizedBox(height: 5,),
                    Text("Personal Details:",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                    SizedBox(height: 8,),
                      Text("Name",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                        SizedBox(height: 5,),
                      Container(
                height: 28,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xff121212))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                  suffixIcon: Image.asset("images/editor.png")
                )
                        ),
                        ),
                         SizedBox(height: 8,),
                        Text("Mobile Number",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                         SizedBox(height: 5,),
                      Container(
                height: 28,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xff121212))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                  suffixIcon: Image.asset("images/editor.png")
                )
                        ),
                        ),
                         SizedBox(height: 8,),
                        Text("Address",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                        SizedBox(height: 5,),
                      Container(
                height: 40,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xff121212))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                  suffixIcon: Image.asset("images/editor.png")
                )
                        ),
                        ),
                          SizedBox(height: 12,),
                        InkWell(
                          onTap: () {
                            
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                              return Cart_2_page();
                             }));
                          },
                          child: Container(
                                    height: 40,
                                    width: 343,
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffF63E3E),
                                    ),
                                    child:Align(alignment: Alignment.center,
                                    child: Text("Save & Continue Payment",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 14,fontWeight: FontWeight.w600),))
                                    ),
                        ),
                  ],
                ),
              ),
                      
          ],
        ),
      ),
    );
  }
}