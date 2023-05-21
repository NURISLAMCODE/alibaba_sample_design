import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:alibaba_ecommerce/view/auth_screen/login_screen.dart';
import 'package:alibaba_ecommerce/widgets_need/our_button.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      padding: const EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenHeight,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   //crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Container(
                //       alignment: Alignment.center,
                //       height: 40,
                //       color: lightGrey,
                //       child: TextFormField(
                //           decoration: const InputDecoration(
                //               border: OutlineInputBorder(),
                //               suffixIcon: Icon(Icons.search),
                //               filled: true,
                //               fillColor: whiteColor,
                //               hintText: searchanything,
                //               hintStyle: TextStyle(color: textfieldGrey))),
                //     ),
                //     5.widthBox,
                //     IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                //   ],
                // ),

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
              20.heightBox,
              Column(
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Get.to(() => HomeScreen());
                        },
                        child: const Text(
                          "Following",
                          style: TextStyle(
                              fontFamily: bold,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Recommended",
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
              10.heightBox,
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: const Center(child: Text("Sign in to view your Tips")),
                ),
              ),
              10.heightBox,
              ourButton(
                  color: redColor,
                  title: login,
                  textColor: whiteColor,
                  onPress: () {
                    Get.to(() => LoginScreen());
                  }).box.roundedFull.width(context.screenWidth - 250).make(),
            ],
          ),
        ),
      ),
    );
  }
}
