import 'package:flutter/material.dart';

class IconImage extends StatelessWidget {
  final String imgAssetPath;
  final Color backColor;
  const IconImage({Key? key, required this.imgAssetPath, required this.backColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 13),
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: backColor,borderRadius: BorderRadius.circular(15),
        ),
        child: Image.asset(imgAssetPath,),
      ),
    );
  }
}
