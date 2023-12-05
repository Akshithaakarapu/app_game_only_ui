import 'dart:convert';
import 'package:app_game/all_projects.dart';
import 'package:app_game/dashboard_ex.dart';
import 'package:app_game/modals/projuct_madal.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Dashboard_page extends StatefulWidget {
  const Dashboard_page({super.key});

  @override
  State<Dashboard_page> createState() => _Dashboard_pageState();
}

class _Dashboard_pageState extends State<Dashboard_page> {
  List<dynamic> dashboard_img = [
    'images/dashboard_tv1.png',
    'images/dashboard_tv2.png',
  ];
  List<dynamic> dashboard_text = [
    'Samsung 32” Odyssey G3 IPS \n 4K UHD Pro Gaming Monitor',
    'LG 27UL500-W 27” 16:9 4K \nFreeSync IPS Gaming Monitor',
  ];
  List<dynamic> dashboars_rupee = [
    '70,000',
    '38.200',
  ];
   List<dynamic> dashboars_star = [
    '4.5/5',
    '3.9/5',
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

  // Productsmodel? products;
  // void getproductsdata() async {
  //   try {
  //     Response response = await Dio()
  //         .get("http://jayanthi10.pythonanywhere.com/api/v1/list_products/");
  //     print(response.data);

  //     products = productsmodelFromJson(jsonEncode(response.data));
  //   } catch (e) {
  //     print("================> Error");
  //   }

@override
void initState(){
  super.initState();
  productlist();
  // getproductsdata();
}
 

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        toolbarHeight: 74,
               
              
        title: Text("Welcome User",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w600)),
         centerTitle: true,
        leading: Image.asset("images/dashboard_logo.png",height: 43,width: 113),
        leadingWidth: 113,
        actions: [Image.asset("images/notifications.png"),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 48,
                    width: 343,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 221, 220, 220),
                          blurRadius: 20.0,
                          spreadRadius: 0, //New
                        )
                          ],
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Color.fromARGB(255, 213, 212, 212)),
                        color: Color(0xffFFFFFF)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        hintText: "Search",hintStyle: TextStyle(color: Color(0xffF63E3E)),
                      prefixIcon: Icon(Icons.search_outlined,color: Color(0xffF63E3E),)
                    )
                  ),
                  ), SizedBox(height: 30,),
                  Image.asset("images/Carousel.jpg"),
                   SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 221, 220, 220),
                                          blurRadius: 20.0,
                                          spreadRadius: 0, //New
                                        )
                                      ],
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color(0xffFFFFFF)
                                ),
                                child: Image.asset("images/gameimg.png",height: 28,width: 51,),
                              
                            ),
                             SizedBox(height: 14,),
                            Text("Spare Parts",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 221, 220, 220),
                                          blurRadius: 20.0,
                                          spreadRadius: 0, //New
                                        )
                                      ],
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color(0xffFFFFFF)
                                ),
                                child: Image.asset("images/setting.png",height: 28,width: 51,),
                            ),
                             SizedBox(height: 14,),
                            Text("Repair & Scrvices ",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500))
                          ],
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gaming Monitors ",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w600)),
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                              return All_projects_page();
                             }));
                          },
                          child: Row(
                            children: [
                               Text("View All",style: TextStyle(color: Color(0xffF63E3E),fontSize:10,fontWeight: FontWeight.w600)),
                               SizedBox(width: 5,),
                               Icon(Icons.chevron_right_outlined,color: Color(0xffF63E3E),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),SizedBox(height: 8,),
                  products_list == null
                  ?CircularProgressIndicator()
                  :
                 Container(
                  height: 240,
                    child: GridView.builder(
                    itemCount: products_list!.data?.length,
                    shrinkWrap: true,           
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
                              childAspectRatio:6/ 8,
                              crossAxisCount: 2,
                              crossAxisSpacing: 4.0,
                              mainAxisSpacing: 14.0,
                            ),
                            physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                    return Dashboard_ex(
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
                ]
            ),
            ),     
          ],
        ),
      ),
    );
  } 
}