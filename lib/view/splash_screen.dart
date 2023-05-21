import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:alibaba_ecommerce/view/auth_screen/login_screen.dart';
import 'package:alibaba_ecommerce/view/home_screen/home.dart';
import 'package:alibaba_ecommerce/widgets_need/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 6), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
          child: Column(
        children: [
          const Spacer(),
          //applogoWidget(),
          appname.text.fontFamily(bold).size(22).color(Colors.red).make(),
          5.heightBox,
          credits.text.black.fontFamily(bold).make(),
          30.heightBox
        ],
      )),
    );
  }
}
