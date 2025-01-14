
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page one"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: MaterialButton(
                   color: Colors.green,
                child: Text("back to Home Page",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white),),
                onPressed: (){
                 Get.back();
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}