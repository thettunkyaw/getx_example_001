// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:get/get.dart';

// Controllers
import '../controllers/addition.controller.dart';

// SumPage StatelessWidget Class
class SumPage extends StatelessWidget {
  // Static Class Properties
  static String routeName = "/sum";

  // Final Class Properties
  final AdditionController additionController = Get.put(AdditionController());

  // Build Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Obx(() =>
            Text("The value of number is ${additionController.num1.value}")),
      ),
      body: Center(child: Obx(() => Text("Sum is ${additionController.sum}"))),
      floatingActionButton: FloatingActionButton(
        onPressed: () => additionController.incrementNum1(),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
