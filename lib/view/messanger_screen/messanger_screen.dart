import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:alibaba_ecommerce/view/auth_screen/login_screen.dart';
import 'package:alibaba_ecommerce/widgets_need/messanger_button.dart';

import 'package:alibaba_ecommerce/widgets_need/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessangerScreen extends StatelessWidget {
  const MessangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Messanger",
          style: TextStyle(color: Colors.black, fontFamily: semibold),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    3,
                    (index) => messangerButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 3.5,
                      icon: index == 0
                          ? icOrders
                          : index == 1
                              ? icBrands
                              : icTopSeller,
                      title: index == 0
                          ? ordersmessanger
                          : index == 1
                              ? promotions
                              : other,
                    ),
                  ),
                ),
                10.heightBox,
                // Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         IconButton(
                //             onPressed: () {},
                //             icon: const Icon(Icons.money_off)),
                //         IconButton(
                //             onPressed: () {},
                //             icon: const Icon(Icons.add_alert_outlined)),
                //         IconButton(
                //             onPressed: () {},
                //             icon: const Icon(
                //               Icons.notification_important,
                //               size: 50,
                //             ))
                //       ],
                //     )
                //   ],
                // ),
                50.heightBox,
                ourButton(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => const LoginScreen());
                    }).box.roundedFull.width(context.screenWidth - 110).make(),
                20.heightBox,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: justForYou.text
                        .color(Colors.black)
                        .size(18)
                        .fontFamily(semibold)
                        .make(),
                  ),
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
                              imgP2,
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
                                imgP3,
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
                                imgP4,
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
      ),
    );
  }
}
