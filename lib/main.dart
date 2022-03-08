import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack/listview.dart';
import 'package:stack/pluto_grid.dart';
import 'package:stack/stack.dart';
import 'package:stack/vehicle/vehicle_page.dart';
import 'package:stack/vehicle/vehicle_table.dart';

import 'calendar.dart';
import 'editable/editable.dart';

Future<void> main() async {
  Get.lazyPut(() => BtnCtrl());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("home"),
          ),
          body: GetBtn()),
      getPages: [
        GetPage(name: '/first', page: () => GetBtn()),
        GetPage(name: '/second', page: () => ListViewPadding()),
        GetPage(name: '/third', page: () => VehiclePage()),
        GetPage(name: '/fourth', page: () => Calendar()),
        GetPage(name: '/fifth', page: () => PlutoGrid2())
      ],
    );
  }
}

class BtnCtrl extends GetxController {
  static BtnCtrl get to => Get.find();
  RxInt openedRoutes = 1.obs;
  // RxInt routePops = 0.obs;
}

class GetBtn extends StatelessWidget {
  GetBtn({Key? key}) : super(key: key);

  // List<Route> arrayRoutes = [];
  int limit = 6;
  void popTo(String route) {
    if (BtnCtrl.to.openedRoutes.value >= limit) {
      print("openedRoutes 닫힘");
      BtnCtrl.to.openedRoutes.value = 1;
      Get.offNamedUntil(route, (route) => false);
    }

    Get.toNamed(route);
    BtnCtrl.to.openedRoutes.value++;
    // BtnCtrl.to.routePops.value = 0;
    print('openedRoutes ${BtnCtrl.to.openedRoutes.value}');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100,
        height: 300,
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  // bool isSame = false;
                  // Get.offNamedUntil('/fifth', (route) {
                  //   if (route.settings.name == "/fifth") {
                  //     isSame = true;
                  //   }
                  //   return true;
                  // });
                  // if (!isSame) {
                  //   Get.toNamed('/fifth');
                  // }
                  // Get.offNamedUntil('/fifth', (route) {
                  //   return !route.willHandlePopInternally;
                  // });
                  popTo('/fifth');
                },
                child: const Text('첫번쨰')),
            TextButton(
                onPressed: () {
                  // Get.to(ListViewPadding());
                  popTo('/second');
                },
                child: const Text('두번째')),
            TextButton(
                onPressed: () {
                  // Get.to(VehiclePage());
                  popTo('/third');
                },
                child: const Text('세번째')),
            TextButton(
                onPressed: () {
                  // Get.to(Calendar());
                  popTo('/fourth');
                },
                child: const Text('네번쨰'))
          ],
        ));
  }
}
