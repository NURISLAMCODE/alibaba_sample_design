import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:flutter/material.dart';

Widget messangerButtons({width, height, icon, String? title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icOrders,
        width: 26,
      ),
      5.heightBox,
      title!.text.fontFamily(semibold).make()
    ],
  ).box.rounded.white.size(width, height).make();
}
