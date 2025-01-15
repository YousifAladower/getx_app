
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/controller_counter.dart';
import 'home.dart';

class Page1 extends StatelessWidget {
   Page1({super.key});
  final ControllerCounter controller = Get.find();

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
            ),
              GetBuilder<ControllerCounter>(
                builder: (controller) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: IconButton(
                              onPressed: () {
                                controller.increment();
                              },
                              icon: Icon(
                                Icons.add,
                                size: 30,
                              )),
                        ),
                        Container(child: Text("${controller.counter}")),
                        Container(
                          child: IconButton(
                              onPressed: () {
                                controller.decrement();
                              },
                              icon: Icon(
                                Icons.remove,
                                size: 30,
                              )),
                        ),
                      ],
                    ))
          ],
        ),
      ),
    );
  }
}