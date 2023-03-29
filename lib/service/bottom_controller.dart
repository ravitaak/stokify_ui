import 'package:get/get.dart';

class BottomController extends GetxController {
  var selectedPage = 1;

  changeValue(int a) {
    selectedPage = a;
  }
}
