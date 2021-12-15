import 'package:doctorapp/screens/doctor_info.dart';
import 'package:flutter/material.dart';

class DoctorsTitle extends StatelessWidget {
  const DoctorsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => DoctorInfo(),
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 18),
        decoration: BoxDecoration(
            color: Color(0xffFFEEE0),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            Image.asset("assets/image/doctor_pic.png",height: 50,fit: BoxFit.cover,),
            const SizedBox(width: 17,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("Dr. Stefeni Albert", style: TextStyle(
                    color: Color(0xffFC9535),
                    fontSize: 19
                ),),
                SizedBox(height: 2,),
                Text("Heart Speailist", style: TextStyle(
                    fontSize: 15
                ),)
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              decoration: BoxDecoration(
                  color: const Color(0xffFBB97C), borderRadius: BorderRadius.circular(13)
              ),
              child: const Text("Call", style: TextStyle(
                  color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500
              ),),
            )
          ],
        ),
      ),
    );
  }
}
