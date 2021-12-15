import 'package:doctorapp/modols/blogImg.dart';
import 'package:doctorapp/modols/categories.dart';
import 'package:doctorapp/widget/catogorie_widget.dart';
import 'package:doctorapp/widget/doctorstitle_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'doctor_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
final isSelected =0;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Text(
                  "Find Your \nConsultation",
                  style: TextStyle(
                      color: Colors.black87.withOpacity(0.8),
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 40,),
                TextFormField(
                  cursorColor: Colors.white,
                  cursorRadius: Radius.circular(10.0),
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                      hintText: "Search ",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none ),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey,),
                      filled: true,
                      fillColor: Color(0xffEFEFEF),
                  ),
                ),
                const SizedBox(height: 30,),
                CatagorieList(),
                SizedBox(height: 20,),
                Text("Catagories",style: TextStyle(fontSize: 25,color: Colors.black87.withOpacity(0.8),fontWeight: FontWeight.w600),),
                const SizedBox(height: 20,),
                Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: blogImage.length,
                      itemBuilder: (context, index){
                      BlogImage blogimg = blogImage[index];
                        return Container(
                          width: 150,
                          margin: const EdgeInsets.only(right: 16),
                          padding: const EdgeInsets.only(top: 16,right: 16,left: 16),
                         decoration: BoxDecoration(
                           color: blogimg.bgColor,
                             borderRadius: BorderRadius.circular(24),
                         ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                               Text(blogimg.imgTitle, style: const TextStyle(color: Colors.white, fontSize: 20),),
                               const SizedBox(height: 6,),
                               Text("${blogimg.Item}", style: const TextStyle(color: Colors.white, fontSize: 13),),
                              SizedBox(
                                height: 160,
                                child: Image.asset(blogimg.imgPath,fit: BoxFit.cover,),
                              ),
                            ],
                          ),
                        );
                      },
                  ),
                ),
                const SizedBox(height: 20,),
                // doctorTitle_sperate_widget
                //DoctorsBottomTitle
                DoctorsTitle(),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
