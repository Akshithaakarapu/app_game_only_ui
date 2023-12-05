
import 'dart:convert';

import 'package:app_game/Gaming_Monitors.dart';
import 'package:app_game/all_prodcuts_ex.dart';
import 'package:app_game/modals/projuct_madal.dart';
import 'package:dio/dio.dart';
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

   Productsmodel? products_list;


void productlist()async{
  try{
    Response response = await Dio().get("http://jayanthi10.pythonanywhere.com/api/v1/list_products/");
   setState(() {
     products_list = productsmodelFromJson(jsonEncode(response.data));
   });
     print("print product list ${response.data}");
  } catch(e){
   
   print(e);
  }
}

@override
void initState(){
  super.initState();
  productlist();
  // getproductsdata();
}
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
                  products_list ==null?CircularProgressIndicator()
                  : Container(
                          height: 600,
                            child: GridView.builder(
                            itemCount: products_list!.data!.length,
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
                             return All_products_ex(
                                dashboard_img: 'http://jayanthi10.pythonanywhere.com/${products_list!.data![index].image}',
                                dashboard_text: '${products_list!.data![index].description}',
                                dashboars_rupee: "${products_list!.data![index].productName}",
                                dashboards_star: '${products_list!.data![index].productId}',
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