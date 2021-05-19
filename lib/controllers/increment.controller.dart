// Flutter: External Libraries
import 'package:get/get.dart';

// IncrementController Controller Class
class IncrementController extends GetxController {
  // Normal Class Properties
  var count = 0.obs;

  // Normal Method Class
  void increment() => count.value++;
}
