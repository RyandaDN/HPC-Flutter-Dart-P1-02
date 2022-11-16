import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pert_1/controler.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    var text = Text(
      '${controller.counter.value}',
      style: TextStyle(fontSize: 30),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                text,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: (() {
                          controller.add();
                        }),
                        child: Icon(Icons.remove)),
                    ElevatedButton(
                        onPressed: (() {
                          controller.minus();
                        }),
                        child: Icon(Icons.add))
                  ],
                )
              ],
            )));
  }
}
