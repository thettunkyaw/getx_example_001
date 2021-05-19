// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:get/get.dart';

// Controllers
import '../controllers/increment.controller.dart';

// Pages
import './other_sum.page.dart';
import './other.page.dart';
import './sum.page.dart';

// HomePage StatelessWidget Class
class HomePage extends StatelessWidget {
  // Static Class Properties
  static String routeName = "/home";

  // Final Class Properties
  final IncrementController incrementController =
      Get.put(IncrementController());

  // Build Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            "On Click: ${incrementController.count}",
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(OtherPage.routeName);
                },
                child: Text(
                  "Other Page",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                },
                child: Text(
                  "Change Theme",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(SumPage.routeName);
                },
                child: Text(
                  "Sum Page",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(OtherSumPage.routeName);
                },
                child: Text(
                  "Other Sum Page",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementController.increment,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
