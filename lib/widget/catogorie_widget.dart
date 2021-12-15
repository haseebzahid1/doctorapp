import 'package:doctorapp/modols/categories.dart';
import 'package:flutter/material.dart';

class CatagorieList extends StatefulWidget {
  const CatagorieList({Key? key}) : super(key: key);

  @override
  _CatagorieListState createState() => _CatagorieListState();
}

class _CatagorieListState extends State<CatagorieList> {
 int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            Categories catagorie = categories[index];
            return InkWell(
              onTap: (){
                setState(() {
                  isSelected =index;
                });
                print(index);
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                    color:isSelected==index? Color(0xffFFD0AA):Colors.white,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:
                Text(catagorie.title, style:  TextStyle(
                  color:isSelected==index? const Color(0xffFC9535) : const Color(0xffA1A1A1),
                ),
                ),
              ),
            );
          }),
    );
  }
}
