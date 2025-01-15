import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/main.dart';
import 'package:getx_app/page2.dart';
import 'package:getx_app/pagethree.dart';
import 'package:getx_app/utils/mybinding.dart';
import 'page1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1".tr), //use translate tr
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                  color: Colors.green,
                  child: Text(
                    "changeTheme",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  onPressed: () {
                 if(Get.isDarkMode){
                  Get.changeTheme(ThemeData.light());
                 }else{
                  Get.changeTheme(ThemeData.dark());
                 }
                  }),
            ),
            Center(
              child: MaterialButton(
                  color: Colors.green,
                  child: Text(
                    "login",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  onPressed: () {
                    // Get.to(Page1() );  // for route u can use this or the next
                    sharepref!.clear();
                     Get.toNamed('/login');
                  }),
            ),
            Center(
              child: MaterialButton(
                  color: Colors.green,
                  child: Text(
                    "page one",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  onPressed: () {
                    // Get.to(Page1() );  // for route u can use this or the next
                     Get.toNamed('/PageOne');
                  }),
            ),
            Center(
              child: MaterialButton(
                  color: Colors.green,
                  child: Text(
                    "page two",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  onPressed: () {
                    Get.to(Page2());
                  }),
            ),
            Center(
              child: MaterialButton(
                  color: Colors.green,
                  child: Text(
                    "page three",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  onPressed: () {
                    Get.to(Pagethree());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
