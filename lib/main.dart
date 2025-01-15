import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/page1.dart';
import 'package:getx_app/pagethree.dart';
import 'package:getx_app/utils/mybinding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'middleware/auth_middleware.dart';
import 'page2.dart';
import 'view/login.dart';

SharedPreferences?  sharepref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharepref = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialBinding: MyBinding(),
      // home: PageConter(),
      // home: Home(),
      initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: ()=>Home()),
        GetPage(name: "/login", page: ()=> Login() , middlewares: [AuthMiddleware()]),
        GetPage(name: "/PageOne", page: ()=>Page1() ,binding: MyBinding()),
        GetPage(name: "/PageTwo", page: ()=>Page2()),
        GetPage(name: "/PageThree", page: ()=>Pagethree())
      ],
    );
  }
}
