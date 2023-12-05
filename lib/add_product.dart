import 'package:app_game/dashboard.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add_product_list extends StatefulWidget {
  const Add_product_list({super.key});

  @override
  State<Add_product_list> createState() => _Add_product_listState();
}

class _Add_product_listState extends State<Add_product_list> {
  
    XFile? insidePic;
  String networkImage = "";
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    //File image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        insidePic = pickedFile;
        networkImage = "";
      } else {
        print('No image selected');
      }
    });
  }

   final productController = TextEditingController();
  final descriptionController = TextEditingController();
   void performLogin() async {
    String product = productController.text.trim();
    String description = descriptionController.text.trim();

    FormData formData = FormData.fromMap({
      "product_name": product,
      "description": description,
      "image": MultipartFile.fromBytes(
        await insidePic!.readAsBytes(),
        filename: insidePic?.name,
      ),
    });

       setState(() {});
    Response response = await Dio().post(
        "http://jayanthi10.pythonanywhere.com/api/v1/add_products/",
        data: formData);

    if (response.statusCode == 200) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return Dashboard_page();
      }));
    } else {
      print("wrong credentioal");
    }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor:Color.fromARGB(255, 244, 141, 6),
        //appBar: AppBar(),
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
                        getImage();
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
                        controller: productController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Color(0xffF63E3E),
                          ),
                          labelText: 'PRODUCT',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter product name',
                        ),
                      ),
                      SizedBox(
                        height: 25,
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
                          performLogin();
                              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                              //   return Cart_page();
                              //  }
                              //  ));
                            }),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffF63E3E) // Background color
                                ),
                            child: Text(
                              'Upload',
                              style: TextStyle(fontSize: 16,color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
              ),

              //  SizedBox(height: 10,),

              //     ElevatedButton(onPressed: (() {

              //  }),
              //  child: Text('Add product')),
            ],
          ),
        ),
      ]),
    ));
  }
}