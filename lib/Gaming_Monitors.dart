import 'package:app_game/cart.dart';
import 'package:flutter/material.dart';

class Gameimg_monitors_page extends StatefulWidget {
  const Gameimg_monitors_page({super.key});

  @override
  State<Gameimg_monitors_page> createState() => _Gameimg_monitors_pageState();
}

class _Gameimg_monitors_pageState extends State<Gameimg_monitors_page> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = 0;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 74,
         title: Text("Gaming Monitors",style: TextStyle(color: Color(0xff000000),fontSize:16,fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Color(0xffFFFFFF),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xffF63E3E),)),
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8,),
                      Text("ASUS ROG Swift OLED Gaming Monitor",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                      SizedBox(height: 10,),
                Container(
                  height: 28,
                  width: 56,
                  decoration: BoxDecoration(
                     boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 221, 220, 220),
                                          blurRadius: 20.0,
                                          spreadRadius: 0, //New
                                        )
                                      ],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1 ,color: Color(0xffF63E3E),
                    ),
                    color: Color(0xffFFFFFF)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                            Text("Size",style: TextStyle(color: Color(0xffF63E3E),fontSize:12,fontWeight: FontWeight.w500)),
                            SizedBox(width: 5,),
                             Image.asset("images/evaArrow.png",color: Color(0xffF63E3E))
                                  
                  ]),
                ),
                SizedBox(height: 10,),
                              Row( 
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Row(
                                          
                                          children: [
                                             Text("MRP",style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)),
                                             Image.asset("images/rupee1.png",color: Color(0xff121212)),
                                             Text("2,50,720",style: TextStyle(color: Color(0xff121212),fontSize:14,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)),
                                              SizedBox(width: 8,),
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
                                          )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset("images/star.png"),
                                           SizedBox(width: 5,),
                                          Text("4.0/5",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),               
                                           ],
                                      ),
                                          Text("(230 Reviews)",style: TextStyle(color: Color(0xff121212),fontSize:10,fontWeight: FontWeight.w500)),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 12,),
                              Text("View All EMI Plans",style: TextStyle(color: Color(0xffF63E3E),fontSize:12,fontWeight: FontWeight.w500)),
                              SizedBox(height: 12,),
                              Row(
                                children: [
                                  Text("Brand",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w600)),
                                  SizedBox(width: 8,),
                                  Text("-",style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w600)),
                                  SizedBox(width: 8,),
                                  Text("ASUS",style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w500)),
                                  SizedBox(width: 8,),
                                  Image.asset("images/company.png"),
                    
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Text("Size",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w600)),
                                  SizedBox(width: 16,),
                                  Text("-",style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w600)),
                                  SizedBox(width: 8,),
                                  Text("50 Inches",style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w500)),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("View More Details",style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w400)),
                                      SizedBox(width: 8,),
                                      Image.asset("images/back.png"),
                                    ],
                                  ),
                                  Divider(color: Color(0xff121212)),
                                ],
                              ),
                               SizedBox(height: 8,),
                              Row(
                                children: [
                                  Text("2 YEARS WARRANTY ON PANEL",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                                  Text("know More",style: TextStyle(color: Color(0xffF63E3E),fontSize:13,fontWeight: FontWeight.w600)),
                                ],
                              ),
                              SizedBox(height: 24,),
                                  Text("Similar Products",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w600)),
                                  SizedBox(height: 16,),
                                  Stack(
                                    children: [
                                        Row(
                                      children: [
                                        Container(
                                          height: 208,
                                          width: 160,
                                          decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                           boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 221, 220, 220),
                                          blurRadius: 20.0,
                                          spreadRadius: 0, //New
                                        )
                                      ],
                                          border: Border.all(color: Color.fromARGB(255, 237, 236, 236)),
                                          color: Color(0xffFFFFFF)
                                          // color: Color.fromARGB(255, 205, 203, 203)
                                         ),
                                         child: Image.asset("images/dashboard_tv5.png"),
                                        ),SizedBox(width: 20,),
                                           Container(
                                          height: 208,
                                          width: 160,
                                          decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                           boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 221, 220, 220),
                                          blurRadius: 20.0,
                                          spreadRadius: 0, //New
                                        )
                                      ],
                                          border: Border.all(color: Color.fromARGB(255, 237, 236, 236)),
                                          color: Color(0xffFFFFFF)
                                          // color: Color.fromARGB(255, 205, 203, 203)
                                         ),
                                         child: InkWell(
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                              return Cart_page();
                                             }));
                                          },
                                          child: Image.asset("images/dashboard_tv6.png")),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: 160,
                                      left: 10,
                                      child: Container(
                                    height: 40,
                                    width: 320,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                       border: Border.all(width: 1, color: Color(0xffF63E3E)),
                                                                                 color: Color(0xffFFFFFF)

                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 14),
                                         child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                            Row( 
                                              children: [
                                                Container(
                                              height: 29,
                                              width: 29,
                                              decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Color(0xffF63E3E)
                                              ),
                                              child: Image.asset("images/trali2.png"),
                                            ),
                                            SizedBox(width: 12,),
                                        Text("Add Item To Cart",style: TextStyle(color: Color(0xffF63E3E),fontSize:14,fontWeight: FontWeight.w600)),
                                              ],
                                            ),
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
                                     )
                                          ],
                                         ),
                                       ),
                                  ),
                                      ),
                                    ],
                                   
                                  ),
                                  
                                      ],
                                    ),
                                  ),
                                  BottomNavigationBar(

                selectedFontSize: 10,
                // selectedIconTheme: IconThemeData(color: const Color.fromARGB(255, 255, 64, 198), size: 10),
                selectedItemColor: Color(0xffF63E3E),
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 10),
                items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,color: Color(0xffF63E3E)),
                label: 'Home',
                  //  backgroundColor: Color(0xffFFFFFF)
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined,color: Color(0xffF63E3E),),
                label: 'Cart',
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.post_add,color: Color(0xffF63E3E),),
                label: 'My Orders',
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.person_outline,color: Color(0xffF63E3E ),),
                label: 'Profile',
                )
                ],
                currentIndex: _selectedIndex,
                      // selectedItemColor:Color(0xffA456DD),
                      onTap: _onItemTapped,
                    ),

                                 
                            ],
                          ),
                        ),
                      );
                    }
                  }