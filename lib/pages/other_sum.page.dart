// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:get/get.dart';

// Controllers
import '../controllers/addition.controller.dart';

// OtherSumPage StatelessWidget Class
class OtherSumPage extends StatelessWidget {
  // Static Class Properties
  static String routeName = "/other-sum";

  // Final Class Properties
  final AdditionController additionController = AdditionController();

  // Build Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text("The value of number is ${additionController.num1.value}"),
      ),
      body: Center(child: Text("Sum is ${additionController.sum}")),
    );
  }
}
