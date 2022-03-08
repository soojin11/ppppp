import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main.dart';

class ListViewPadding extends StatelessWidget {
  const ListViewPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final check = Rx<bool?>(null);
    check.value = false;
    RxList<RxBool> test = List.generate(10, (i) => false.obs).obs;
    return Scaffold(
      appBar: AppBar(
        title: Text("리스트뷰"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: GetBtn(),
            ),
            SizedBox(
                width: 100,
                height: 50,
                child: Obx(
                  () => Checkbox(
                    value: check.value,
                    onChanged: (b) {
                      check.value = b;
                    },
                    tristate: true,
                  ),
                )),
            Container(
              width: 400,
              height: 400,
              child: ListView(
                  children: List.generate(
                      10,
                      (index) => Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: ListTile(
                              leading: Obx(() => Checkbox(
                                    value: test[index].value,
                                    onChanged: (v) {
                                      check.value = v;
                                      for (var item in test) {
                                        item.value = v!;
                                      }
                                    },
                                  )),
                              dense: true,
                              title: Text('타이틀'),
                              tileColor: Colors.grey,
                              trailing: Container(
                                padding: EdgeInsets.symmetric(horizontal: 2),
                                width: 50,
                                // height: 25,

                                color: Colors.blue[900],
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(10),
                                //     color: Colors.blue[900]),
                                child: Center(child: Text(test.toString())),
                              ),
                            ),
                          ))),
            ),
          ],
        ),
      ),
    );
  }
}
