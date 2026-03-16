import 'package:final_project/views/cartscreen.dart';
import 'package:final_project/views/categoryscreen.dart';
import 'package:final_project/views/homescreen.dart';
import 'package:final_project/views/login.dart';
import 'package:final_project/views/main_home.dart';
import 'package:final_project/views/notificationsscreen.dart';
import 'package:final_project/views/onboarding.dart';
import 'package:final_project/views/profilescreen.dart';
import 'package:final_project/views/signup.dart';
import 'package:final_project/views/splashscreen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" :(context)=> Splashscreen(),
        "/home" :(context)=>MainHome(),
        "/onboarding":(context)=>Onboarding(),
        "/login":(context)=>Login(),
        "/signup":(context)=>Signup(),
        "/notifications":(context)=>Notificationsscreen(),
        "/profile":(context)=>Profilescreen(),
        "/cart":(context)=>Cartscreen(),
        "/category":(context)=>Categoryscreen(),
      },
    );
  }
}
