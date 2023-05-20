import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:alibaba_ecommerce/consts/lists.dart';
import 'package:alibaba_ecommerce/view/home_screen/components/featured_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      padding: const EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenWidth,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Products",
                          style: TextStyle(
                              fontFamily: bold,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Manufacturers",
                          style: TextStyle(
                              fontFamily: bold,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            5.heightBox,
            Container(
              alignment: Alignment.center,
              height: 40,
              color: lightGrey,
              child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: whiteColor,
                      hintText: searchanything,
                      hintStyle: TextStyle(color: textfieldGrey))),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    10.heightBox,
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: forAllBusiness.text
                              .color(Colors.black)
                              .size(18)
                              .fontFamily(semibold)
                              .make(),
                        ),
                      ],
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Align(
                        child: Row(
                          children: List.generate(
                            3,
                            (index) => Column(
                              children: [
                                featuredButton(
                                  title: freaturedTitles1[index],
                                  icon: featuredImages1[index],
                                ),
                                10.heightBox,
                              ],
                            ),
                          ).toList(),
                        ),
                      ),
                    ),
                    //all product sectoin
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: inspireHistory.text
                          .color(Colors.black)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),

                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      imgP4,
                                      height: 120,
                                      width: 140,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
                                    "\$1.60"
                                        .text
                                        .fontFamily(bold)
                                        .color(darkFontGrey)
                                        .size(16)
                                        .make(),
                                    10.heightBox,
                                    // "Beauty"
                                    //     .text
                                    //     .color(darkFontGrey)
                                    //     .fontFamily(bold)
                                    //     .size(12)
                                    //     .make()
                                  ],
                                )
                                    .box
                                    .color(Vx.gray200)
                                    .roundedSM
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .padding(const EdgeInsets.all(4))
                                    .make()),
                      ),
                    ),
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: topRank.text
                          .color(Colors.black)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            10,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      imgP2,
                                      height: 200,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
                                    "Most Popular"
                                        .text
                                        .fontFamily(bold)
                                        .color(Colors.black)
                                        .size(16)
                                        .make(),
                                    10.heightBox,
                                    "Beauty"
                                        .text
                                        .color(darkFontGrey)
                                        .fontFamily(bold)
                                        .size(12)
                                        .make()
                                  ],
                                )
                                    .box
                                    .color(Vx.gray200)
                                    .roundedSM
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .padding(const EdgeInsets.all(8))
                                    .make()),
                      ),
                    ),
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: justForYou.text
                          .color(Colors.black)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  imgPi1,
                                  height: 300,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ).box.shadow.make(),
                          ),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    imgP1,
                                    height: 150,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                              5.heightBox,
                              Row(
                                children: [
                                  Image.asset(
                                    imgP3,
                                    height: 150,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ).box.color(Vx.gray300).shadowSm.make()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
