import 'package:app_game/dashboard.dart';
import 'package:app_game/modals/projuct_madal.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Delete_page extends StatefulWidget {
  const Delete_page({super.key});

  @override
  State<Delete_page> createState() => _Delete_pageState();
}

class _Delete_pageState extends State<Delete_page> {
   final product_idController = TextEditingController();

Productsmodel? product_list;
void delete() async{
  String product_id = product_idController.text.trim();

   FormData formData = FormData.fromMap({
      "product_id": product_id,
    });
    Response response = await Dio().delete('http://jayanthi10.pythonanywhere.com/api/v1/delete_product/',
    data: formData,
    );
    
    if (response.statusCode == 200) {
      print('successfully deleted the product');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard_page()));
    } else {
      print(" delete product ");
    }
 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Stack(children: [
        Padding( 
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xffF63E3E),
                      ),
                    ),
                    // Container(
                    //     decoration: BoxDecoration(
                    //         color: Color(0xffF63E3E),
                    //         borderRadius: BorderRadius.circular(50)),
                    //     child: Icon(
                    //       Icons.add,
                    //       color: Colors.white,
                    //     ))
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                child: Image.asset('images/app_logo.png'),
                // height: double.infinity,
                // height: 350,
                // width: 400,
                // decoration: BoxDecoration(
                //     color: Color.fromARGB(255, 244, 141, 6),
                //     borderRadius: BorderRadius.only(
                //       bottomRight: Radius.circular(100),
                //       topLeft: Radius.circular(100),
                //     )),
                // child: Image.asset(
                //   'images/splash.png',
                //   width: 200,
                //   height: 200,
                // ),
              ),

              SizedBox(height: 100,),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        topLeft: Radius.circular(100),
                        // topRight: Radius.circular(50)
                      )),
                  child: Column(
                    children: [
                      TextField(
                       controller: product_idController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Color(0xffF63E3E),
                          ),
                          labelText: 'PRODUCT_id',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter product_id',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // TextField(
                      //   controller: descriptionController,
                      //   //obscureText: true,
                      //   decoration: InputDecoration(
                      //     prefixIcon: Icon(
                      //       Icons.person,
                      //       color: Color(0xffF63E3E),
                      //     ),
                      //     labelText: 'DESCRIPTION',
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(10)),
                      //     hintText: 'Enter description',
                      //   ),
                      // ),
                      SizedBox(
                        height: 100,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (() {
                              delete();
                            }),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffF63E3E) // Background color
                                ),
                            child: Text(
                              'Delete',
                              style: TextStyle(fontSize: 16,color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}