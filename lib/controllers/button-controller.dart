import 'package:get/get.dart';

class ButtonController extends GetxController {
  var isColorBlack = false.obs;

  void toggleColor() {
    isColorBlack.value = !isColorBlack.value;
  }
}

class ButtonControllers extends GetxController {
  var selectedButton = ''.obs;

  void toggleSelected(String label) {
    if (selectedButton.value == label) {
      selectedButton.value = ''; // Deselect if already selected
    } else {
      selectedButton.value = label; // Select if not already selected
    }
  }

  bool isSelected(String label) {
    return selectedButton.value == label;
  }
}
