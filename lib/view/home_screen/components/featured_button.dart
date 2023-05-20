import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget featuredButton({String? title, icon}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      title!.text.fontFamily(bold).size(16).color(whiteColor).make(),
      10.widthBox,
      Image.asset(
        icon,
        color: Vx.gray200,
        width: 60,
        fit: BoxFit.fill,
      ),
    ],
  )
      .box
      .width(220)
      .margin(const EdgeInsets.symmetric(horizontal: 8, vertical: 8))
      .color(const Color.fromARGB(255, 219, 86, 3))
      .padding(const EdgeInsets.all(8))
      .roundedSM
      .outerShadow
      .make();
}
