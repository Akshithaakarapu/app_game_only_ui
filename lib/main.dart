import 'package:app_game/cart.dart';
import 'package:app_game/dashboard.dart';
import 'package:app_game/my_order_screen.dart';
import 'package:app_game/profile.dart';
import 'package:app_game/splash_creen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(     
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Splash_screen_page(),
      
    );
  }
}
class Bottam_navigation_bar extends StatefulWidget {
  const Bottam_navigation_bar({super.key});

  @override
  State<Bottam_navigation_bar> createState() => _Bottam_navigation_barState();
}

class _Bottam_navigation_barState extends State<Bottam_navigation_bar> {
        int _index = 0;
        final screens =[
          Dashboard_page(),
          Cart_page(),
          My_order_screen(),
          Profilr_page(),
        ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: screens[_index],
    bottomNavigationBar : BottomNavigationBar(
      currentIndex: _index,
      onTap: ((value) {
        setState(() {
          _index = value;
        });
      }),
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
                // currentIndex: _selectedIndex,
                //       // selectedItemColor:Color(0xffA456DD),
                //       onTap: _onItemTapped,
                    ),
    );
  }
}

