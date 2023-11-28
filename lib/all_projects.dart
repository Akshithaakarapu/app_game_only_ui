
import 'package:app_game/Gaming_Monitors.dart';
import 'package:flutter/material.dart';

class All_projects_page extends StatefulWidget {
  const All_projects_page({super.key});

  @override
  State<All_projects_page> createState() => _All_projects_pageState();
}

class _All_projects_pageState extends State<All_projects_page> {
   List<dynamic> dashboard_img = [
    'images/dashboard_tv1.png',
    'images/dashboard_tv2.png',
    'images/dashboard_tv3.png',
    'images/cart_tv.png',
    'images/dashboard_tv5.png',
    'images/dashboard_tv6.png',
  ];
  List<dynamic> dashboard_text = [
    'Samsung 32” Odyssey G3 IPS \n 4K UHD Pro Gaming Monitor',
    'LG 27UL500-W 27” 16:9 4K \nFreeSync IPS Gaming Monitor',
    'MSI G321CUV 31.5” 4K HDR\n Curved Gaming Monitor',
    'ASUS ROG Swift OLED Gaming\n Monitor',
    'LG 32UQ750-W 31.5” 4K HDR\n 114 Hz Gaming Monitor',
    'ASUS Republic Of Gamers Swift\n PG32UQR 32” 4K HDR Hz',
  ];
  List<dynamic> dashboars_rupee = [
    '70,000',
    '38.200',
    '42,830',
    '2,33,720',
    '51,999',
    '1,12,949',
  ];
   List<dynamic> dashboars_star = [
    '4.5/5',
    '3.9/5',
    '4.1/5',
    '4.0/5',
    '4.6/5',
    '33.4/5',
  ];
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Column(
                children: [
                     Container(
                          height: 600,
                            child: GridView.builder(
                            itemCount: dashboard_img.length,
                            shrinkWrap: true,           
                            scrollDirection: Axis.vertical,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
                                      childAspectRatio:5/ 7,
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 6.0,
                                    ),
                                    physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                             return Padding(
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
                                  child: Image.asset(dashboard_img[index],width: 100,height: 85,)),
                                SizedBox(height: 10,),
                                Text(dashboard_text[index],style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w500)),
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
                                          Text(dashboars_rupee[index],style: TextStyle(color: Color(0xff121212),fontSize:10,fontWeight: FontWeight.w700)),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset("images/star.png"),
                                            SizedBox(width: 5,),
                                          Text(dashboars_star[index],style: TextStyle(color: Color(0xff000000),fontSize:10,fontWeight: FontWeight.w400)),
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
                          );
                            }
                        ),  
                      ),
                ],
              ),
            ),
              BottomNavigationBar(
      
                  selectedFontSize: 10,
                  // selectedIconTheme: IconThemeData(color: const Color.fromARGB(255, 255, 64, 198), size: 10),
                  selectedItemColor: Color(0xffF63E3E),
                  // selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 10),
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
        ),)
                      );
  }
}