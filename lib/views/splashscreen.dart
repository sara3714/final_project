import 'package:flutter/material.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){

      Navigator.of(context).pushReplacementNamed("/onboarding");
    },);

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff54408C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/Chapter.png",height: 600,width: 1000),
          ],
        ),
      ),
    );
  }
}
