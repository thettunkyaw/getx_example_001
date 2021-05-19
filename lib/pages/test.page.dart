// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// TestPage StatelessWidget Class
class TestPage extends StatelessWidget {
  // Static Class Properties
  static String routeName = "/test";

  // Build Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test Page",
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Text("This is the test page"),
      )),
    );
  }
}
