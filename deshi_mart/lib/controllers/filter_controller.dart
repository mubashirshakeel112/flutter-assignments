import 'package:get/get.dart';

class FilterController extends GetxController {
  bool isChanged = false;

  checkBoxItem(value) {
    isChanged = value;
    update();
  }
}
