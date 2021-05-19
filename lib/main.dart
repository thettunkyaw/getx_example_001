// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:get/get.dart';

// Pages
import './pages/home.page.dart';
import './pages/other.page.dart';
import './pages/sum.page.dart';
import './pages/other_sum.page.dart';

// Main Function
void main() {
  runApp(MyApp());
}

// MyApp StatelessWidget Class
class MyApp extends StatelessWidget {
  // Build Method
  @override
  Widget build(BuildContext context) {
    /// Get Material App is for
    /// routes, snackbars, internationalization, bottomSheets, dialogs, and
    /// high-levels api related to routes and absence of context.
    ///
    // Returning Widgets
    return GetMaterialApp(
      title: "GetX Example 001",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: HomePage.routeName,
      getPages: [
        GetPage(name: HomePage.routeName, page: () => HomePage()),
        GetPage(name: OtherSumPage.routeName, page: () => OtherSumPage()),
        GetPage(name: OtherPage.routeName, page: () => OtherPage()),
        GetPage(name: SumPage.routeName, page: () => SumPage()),
      ],
    );
  }
}
