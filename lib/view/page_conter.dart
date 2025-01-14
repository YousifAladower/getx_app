import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller_counter.dart';

class PageConter extends StatelessWidget {
  const PageConter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GetBuilder<ControllerCounter>(
            init: ControllerCounter(),
            builder: (controller)=>Row(
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
                    )
            )
          ],
        ),
      ),
    );
  }
}
