// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:get/get.dart';

// Controllers
import '../controllers/increment.controller.dart';

// OtherPage StatelessWidget Class
class OtherPage extends StatelessWidget {
  // Static Class Properties
  static String routeName = "/other";

  // Final Class Properties
  IncrementController incrementController = Get.find();

  // Build Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Other Page",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "The increment counter is ${incrementController.count}.",
          ),
        ),
      ),
    );
  }
}
