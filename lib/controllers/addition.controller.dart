// Flutter: External Libraries
import 'package:get/get.dart';

// AdditionController Controller Class
class AdditionController extends GetxController {
  // Normal Class Properties
  var num1 = 0.obs;
  var num2 = 0.obs;

  // Normal Class Methods
  void incrementNum1() => num1.value++;
  void incrementNum2() => num2.value++;

  // Getter Methods
  int get sum => num1.value + num2.value;
}
