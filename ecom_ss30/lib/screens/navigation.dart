import 'package:ecom_ss30/screens/favorite_screen.dart';
import 'package:ecom_ss30/screens/home.dart';
import 'package:ecom_ss30/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'product_list.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favorite'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Setting'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), ProductList(), const FavoriteScreen(), const ProfileScreen()];
}