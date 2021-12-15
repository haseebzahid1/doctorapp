import 'package:doctorapp/widget/info_button_bottom.dart';
import 'package:doctorapp/widget/small_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DoctorInfo extends StatefulWidget {
  const DoctorInfo({Key? key}) : super(key: key);

  @override
  _DoctorInfoState createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 30,),
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 30.0,
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                ),
                Container(
                  height: 200,
                  width: size.width,
                  child: Row(
                    children: [
                      Container(
                        width: size.width - 235,
                        child: Image.asset("assets/image/doctor_pic2.png",),
                      ),
                      Container(
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 20,),
                                  Text("Dr. Stefeni Albert", style: TextStyle(fontSize: 32),),
                                  Text("Heart Speailist", style: TextStyle(fontSize: 19, color: Colors.grey),),
                                ],
                              ),
                              const SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  IconImage(
                                    imgAssetPath: 'assets/image/email.png',
                                    backColor: Color(0xffFFECDD),
                                  ),
                                  IconImage(
                                    imgAssetPath: 'assets/image/call.png',
                                    backColor: Color(0xffFEF2F0),
                                  ),
                                  IconImage(
                                    imgAssetPath: 'assets/image/video_call.png',
                                    backColor: Color(0xffEBECEF),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 16,),
                      Text("About", style: TextStyle(fontSize: 22),),
                      SizedBox(height: 16,),
                      Text(
                        "Dr. Stefeni Albert is a cardiologist in Nashville & affiliated with multiple hospitals in the  area.He received his medical degree from Duke University School of Medicine and has been in practice for more than 20 years. ",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      SizedBox(height: 24,),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/image/mappin.png"),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Address",
                                      style: TextStyle(color: Colors.black87.withOpacity(0.7), fontSize: 20),
                                    ),
                                    const SizedBox(height: 3,),
                                    const Text(
                                      "House # 2, Road # 5, Green Road Dhanmondi, Dhaka, Bangladesh",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/image/mappin.png"),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Daily Practict",
                                        style: TextStyle(color: Colors.black87.withOpacity(0.7), fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      const Text('''Monday - Friday Open till 7 Pm''',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Image.asset("assets/image/map.png",height: 150,),
                          ],
                        )),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10,top: 15),
                  child: Text(
                    "Activity", style: TextStyle(color: Color(0xff242424),
                      fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: const [
                      ButtonView(title: 'Lit of Schedule', imgPath: 'assets/image/list.png', color: Color(0xffFBB97C), bgcolor: Color(0xffFCCA9B),),
                      SizedBox(width: 8,),
                      ButtonView(title: "'Doctor's Daily ...'", imgPath: 'assets/image/list.png', color: Color(0xffA5A5A5), bgcolor: Color(0xffBBBBBB),),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
