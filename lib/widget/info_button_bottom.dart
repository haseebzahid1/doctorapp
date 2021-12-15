import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  final Color color;
  final Color bgcolor;
  final String imgPath;
  final String title;
  const ButtonView({Key? key, required this.color, required this.imgPath, required this.title, required this.bgcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding:  EdgeInsets.symmetric(vertical: 18,horizontal: 8),
        decoration: BoxDecoration(
            color:  color,
            // color:  Color(0xffFBB97C),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            Container(

                decoration: BoxDecoration(
                    color: bgcolor,
                    // color: Color(0xffFCCA9B),
                    borderRadius: BorderRadius.circular(16)
                ),
                padding: EdgeInsets.all(8.0),
                child: Image.asset(imgPath),
                // child: Image.asset("assets/image/list.png"),
            ),
            SizedBox(
              width: 7,
            ),
            Text(title,style: TextStyle(color: Colors.white,fontSize: 17),),
          ],
        ),
      ),
    );
  }
}
