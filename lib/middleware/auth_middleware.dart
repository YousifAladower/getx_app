
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';
import 'package:getx_app/main.dart';

class AuthMiddleware extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
   if(sharepref!.getString("id") != null) return RouteSettings(name: "/home");
  }
}