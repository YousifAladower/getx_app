import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagethree extends StatelessWidget {
  const Pagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page three"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: MaterialButton(
                  color: Colors.green,
                  child: Text(
                    "home Page",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  onPressed: () {
                    Get.back();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
