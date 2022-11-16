import 'dart:developer';

import 'package:get/get.dart';

class Controller extends GetxController {
  var counter = 0.obs;

  void add() {
    counter++;
  }

  void minus() {
    counter--;
  }
}
