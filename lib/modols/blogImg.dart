import 'dart:ui';

class BlogImage {
  final String imgTitle;
  final String imgPath;
  final int Item;
  final Color bgColor;
  BlogImage({
    required this.imgTitle,
    required this.imgPath,
    required this.Item,
    required this.bgColor,
  });
}


List<BlogImage> blogImage = [
  BlogImage(imgTitle: "Cough & Cold", imgPath: "assets/image/img1.png", Item: 10, bgColor: Color(0xffFBB97C),),
  BlogImage(imgTitle: "Heart Specialist", imgPath: "assets/image/img2.png", Item: 17, bgColor: Color(0xffF69383),),
  BlogImage(imgTitle: "Diabetes Care", imgPath: "assets/image/img3.png", Item: 27, bgColor: Color(0xffEACBCB),),
];



