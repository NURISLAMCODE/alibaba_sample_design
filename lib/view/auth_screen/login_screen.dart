import 'package:alibaba_ecommerce/consts/colors.dart';
import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:alibaba_ecommerce/view/home_screen/home.dart';
import 'package:alibaba_ecommerce/widgets_need/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.close_outlined,
            color: whiteColor,
          ).onTap(() {
            Get.to(() => const Home());
          }),
          title: const Text(
            "Sing in/register",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: const [Icon(Icons.add_chart_outlined)],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Image.asset(icGoogleLogo),
                      ),
                      const Text(
                        "Google",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: semibold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ).onTap(() {
                  Get.to(() => const Home());
                }),
                30.heightBox,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "-------OR-------",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: semibold,
                          fontSize: 20),
                    ),
                  ],
                ),
                30.heightBox,
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Image.asset(icFacebookLogo),
                      ),
                      const Text(
                        "Facebook",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: semibold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ).onTap(() {
                  Get.to(() => const Home());
                }),
                20.heightBox,
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Image.asset(icLogin),
                      ),
                      const Text(
                        "Continue with Email",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: semibold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ).onTap(() {
                  Get.to(() => const Home());
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
