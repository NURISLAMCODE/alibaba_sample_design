import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:alibaba_ecommerce/consts/lists.dart';
import 'package:alibaba_ecommerce/widgets_need/our_button.dart';
import 'package:flutter/material.dart';

class MyAlibabaScreen extends StatelessWidget {
  const MyAlibabaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  )).onTap(() {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.heightBox,
                      ourButton(
                              color: redColor,
                              title: singInProcess,
                              textColor: whiteColor,
                              onPress: () {})
                          .box
                          .roundedFull
                          .width(context.screenWidth - 200)
                          .make(),
                    ],
                  )),
                ],
              ),
            ),
            20.heightBox,
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                  itemDetailButtonList.length,
                  (index) => ListTile(
                        leading: const Icon(Icons.favorite_border),
                        title: itemDetailButtonList[index]
                            .text
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .make(),
                        trailing: const Icon(Icons.arrow_forward),
                      )),
            ),
            20.heightBox,
          ],
        ),
      )),
    );
  }
}
