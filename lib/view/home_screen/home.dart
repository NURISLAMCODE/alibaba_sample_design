import 'package:alibaba_ecommerce/consts/consts.dart';
import 'package:alibaba_ecommerce/controllers/home_controller.dart';
import 'package:alibaba_ecommerce/view/cart_screen/cart_screen.dart';
import 'package:alibaba_ecommerce/view/home_screen/home_screen.dart';
import 'package:alibaba_ecommerce/view/messanger_screen/messanger_screen.dart';
import 'package:alibaba_ecommerce/view/my_alibaba_Screen/my_alibaba_screen.dart';
import 'package:alibaba_ecommerce/view/tips_screen/tips_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 46,
            height: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icSearch,
            width: 26,
          ),
          label: tips),
      BottomNavigationBarItem(
          icon: Image.asset(
            icMessages,
            width: 26,
          ),
          label: messanger),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: myAlibaba)
    ];
    var navBody = [
      const HomeScreen(),
      const TipsScreen(),
      const MessangerScreen(),
      const CartScreen(),
      const MyAlibabaScreen()
      // const ProfileScreen()
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currntNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currntNavIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          items: navbarItem,
          onTap: (value) {
            controller.currntNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
