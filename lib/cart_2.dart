import 'package:app_game/order_confirmd_screen.dart';
import 'package:flutter/material.dart';

class Cart_2_page extends StatefulWidget {
  const Cart_2_page({super.key});

  @override
  State<Cart_2_page> createState() => _Cart_2_pageState();
}

class _Cart_2_pageState extends State<Cart_2_page> {
            int _selectedIndex = 1;
        void _onItemTapped(int index) {
        setState(() {
          _selectedIndex = 1;
        });
        }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 74,
         title: Text("Cart",style: TextStyle(color: Color(0xff000000),fontSize:16,fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Color(0xffFFFFFF),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xffF63E3E),)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Container(
                      height: 162,
                      width: 343,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color.fromARGB(255, 236, 234, 234)),
                        color: Color(0xffFFFFFF)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                              Image.asset("images/cart_tv.png"),
                              SizedBox(width: 8,), 
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ASUS ROG Swift OLED Gaming\nMonitor ",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                                  SizedBox(height: 5,),
                                  Text("Size: 50 Inches",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                                  SizedBox(height: 5,),
                                  Text("Qty: 1",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                                ],
                              )
                              ],
                            ),
                           SizedBox(height: 3,),
                            Text("No Coupons Applied",style: TextStyle(color: Color(0xffbababa),fontSize:12,fontWeight: FontWeight.w500)),
                            SizedBox(height: 5,),
                              Text("No Shipping Charges",style: TextStyle(color: Color(0xffbababa),fontSize:14,fontWeight: FontWeight.w500)),
                                                  SizedBox(height: 4,),
              
                                                Row(
                                children: [
                                  Text("Total Price:",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500)),
                                  Image.asset("images/rupee2.png",color: Color(0xff121212)),
                                  Text("2,33,720",style: TextStyle(color: Color(0xff121212),fontSize:14,fontWeight: FontWeight.w700)),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                            SizedBox(height: 10,),
                            Container(
                              height: 85,
                              width: double.infinity,
                              color: Color(0xfff0f0f0),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text("Deliver Address",style: TextStyle(color: Color(0xffF63E3E),fontSize:14,fontWeight: FontWeight.w500)),
                                  SizedBox(height: 5,),
                                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                  Text("Naveen Kumar......., 500055",style: TextStyle(color: Color(0xff000000),fontSize:12,fontWeight: FontWeight.w500)),
                                  Text("Change Address",style: TextStyle(color: Color(0xffF63E3E),fontSize:12,fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                  Divider(color: Color(0xff121212)),
                                  Text("You Will Get Product By 15 Oct, Monday To This Address",style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Divider(color: Color(0xff121212)),
                            SizedBox(height: 6,),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Select Your Payment Method",style: TextStyle(color: Color(0xff000000),fontSize:14,fontWeight: FontWeight.w500))),
                                  SizedBox(height: 8,),
                                Container(
                                  height: 128,
                                  width: 343,
                                  decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: Color.fromARGB(255, 236, 235, 235)),
                                   color: Color(0xffFFFFFF)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 8,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset("images/online_upi.png"),
                                            Text("UPI Apps",style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w500)),
                                            Image.asset("images/dwon_arrow.png"),
                                          ],
                                        ),
                                        Divider(color: Color(0xff121212)),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset("images/phnpay.png"),
                                            Text("PhonePe",style: TextStyle(color: Color(0xff121212),fontSize:10,fontWeight: FontWeight.w500)),
                                            Image.asset("images/vender.png",color: Color(0xffF63E3E)),
                                          ],
                                        ),
                                        SizedBox(height: 4,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset("images/gpay.png"),
                                            Text("Google Pay ",style: TextStyle(color: Color(0xff121212),fontSize:10,fontWeight: FontWeight.w500)),
                                            Image.asset("images/vender.png"),
                                          ],
                                        ),SizedBox(height: 4,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset("images/paytem.png"),
                                            Text("Paytm",style: TextStyle(color: Color(0xff121212),fontSize:10,fontWeight: FontWeight.w500)),
                                            Image.asset("images/vender.png"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 40,
                                  width: 343,
                                  decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: Color.fromARGB(255, 235, 234, 234)),
                                   color: Color(0xffFFFFFF)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Image.asset("images/post.png"),
                                      Text("Credit & Debit Card",style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w500)),
                                      Icon(Icons.chevron_right_outlined,color: Color(0xffF63E3E),)
                                    ]),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                 Container(
                                  height: 40,
                                  width: 343,
                                  decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: Color.fromARGB(255, 235, 234, 234)),
                                   color: Color(0xffFFFFFF)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Image.asset("images/camera.png"),
                                      Text("Credit & Debit Card",style: TextStyle(color: Color(0xff121212),fontSize:12,fontWeight: FontWeight.w500)),
                                      Image.asset("images/vender.png"),
                                    ]),
                                  ),
                                ),
                              SizedBox(height: 10,),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                      return Oreder_confimed_screen();
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
                                    child: Text("Continue Payment",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 14,fontWeight: FontWeight.w600),))
                                    ),
                                ),
                                ],
                              ),
                              
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
        ),
      ),
    );
  }
}