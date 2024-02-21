import 'package:get/get.dart';

class NameController extends GetxController {
  var userName = "ABC".obs;

  void changeName(String newName) {
    userName.value = newName;
  }
}
