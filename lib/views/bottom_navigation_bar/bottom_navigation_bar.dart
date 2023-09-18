import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_1/navigation/routes.dart';
import 'package:flutter_application_1/views/bottom_navigation_bar/controller/bottom_navigation_bar_controller.dart';
import 'package:flutter_application_1/views/login/login.dart';
import 'package:flutter_application_1/views/parameter/parameter.dart';
import 'package:get/get.dart';

class BottomNavigationBarView extends StatelessWidget {
  BottomNavigationBarView({super.key});

  BottomNavigationBarController bottomNavigationBarController =
      Get.put(BottomNavigationBarController());

  final screens = [LoginView(), ParameterView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => IndexedStack(
              index: bottomNavigationBarController.selectedIndex.value,
              children: screens,
            )),
        /** 
        body: 
        */
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
            currentIndex: bottomNavigationBarController.selectedIndex.value,
            selectedItemColor: Colors.amber[800],
            onTap: (index) {
              bottomNavigationBarController.changeIndex(index);
              print(index);
            },
          ),
        ));
  }
}
