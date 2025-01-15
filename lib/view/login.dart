import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/main.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                  color: Colors.green,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  onPressed: () {
                   sharepref!.setString("id", "1");
                    Get.toNamed('/home');
                  }),
            ),
           
          ],
        ),
      ),
    );
  }
}
