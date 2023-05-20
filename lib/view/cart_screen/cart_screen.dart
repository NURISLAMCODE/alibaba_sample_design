import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:alibaba_ecommerce/widgets_need/our_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Shopping cart (0)",
          style: TextStyle(color: Colors.black, fontFamily: semibold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.list_alt))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Image.asset(icCart),
                5.heightBox,
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child:
                        const Center(child: Text("Sign in to view your cart")),
                  ),
                ),
                10.heightBox,
                ourButton(
                        color: redColor,
                        title: login,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .roundedFull
                    .width(context.screenWidth - 250)
                    .make(),
                40.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: recoForYou.text
                      .color(Colors.black)
                      .size(18)
                      .fontFamily(semibold)
                      .make(),
                ),
                20.heightBox,
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
                              imgFc3,
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
                                imgFc2,
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
                                imgFc4,
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
