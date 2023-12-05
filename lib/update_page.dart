import 'dart:io';

import 'package:app_game/dashboard.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Update_page extends StatefulWidget {
  const Update_page({super.key});

  @override
  State<Update_page> createState() => _Update_pageState();
}

class _Update_pageState extends State<Update_page> {
  final TextEditingController product_idController = TextEditingController();
  final TextEditingController Product_nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  void update()async{
    String productid = product_idController.text.trim();
    String productname = Product_nameController.text.trim();
    String description = descriptionController.text.trim();

    final formdata = FormData.fromMap({

      "product_id": productid,
      "product_name": productname,
      "description": description,
      "image": await MultipartFile.fromFile(image!.path)
    });
    try {
      Response response = await Dio().patch(
          "http://jayanthi10.pythonanywhere.com/api/v1/update_product/",
          data: formdata);
      print(response.data);

      if (response.statusCode == 200) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Dashboard_page()));
      }
    } catch (e) {
      print("============>Error");
    }
  }
 File? image;
  void pickImage(ImageSource source) async {
    try {
      final pickerFile = await ImagePicker().pickImage(source: source);
      setState(() {
        image = File(pickerFile!.path);
      });
    } catch (e) {
      print(e);
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
                    InkWell(
                      onTap: () {
                        pickImage(ImageSource.gallery);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffF63E3E),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                child: Image.asset('images/app_logo.png'),
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
                          labelText: 'Product_id',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter product_id',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        controller: Product_nameController,
                        //obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xffF63E3E),
                          ),
                          labelText: 'Product name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter Product name',
                        ),
                      ),
                      TextField(
                        controller: descriptionController,
                        //obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xffF63E3E),
                          ),
                          labelText: 'DESCRIPTION',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter description',
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (() {
                              update();
                            }),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffF63E3E) // Background color
                                ),
                            child: Text(
                              'Update',
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