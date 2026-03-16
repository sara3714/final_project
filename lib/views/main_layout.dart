import 'package:final_project/views/profilescreen.dart';
import 'package:flutter/material.dart';
import 'cartscreen.dart';
import 'categoryscreen.dart';
import 'homescreen.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int selectedindex = 0;
  List <Widget> screens = [
    Homescreen(),
    Categoryscreen(),
    Cartscreen(),
    Profilescreen(),
  ];
  List<String>titles =[
    "Home",
    "Category",
    "Cart",
    "Profile",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        title: Text(titles[selectedindex],style:TextStyle(color: Color(0xff121212), fontWeight:.bold ) ,),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed("/notifications");
          }, icon: Icon(Icons.notifications))
        ],
      ),
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffFAFAFA),
          selectedItemColor: Color(0xff54408C),
          unselectedItemColor: Color(0xffA6A6A6),
          currentIndex: selectedindex,
          onTap: (index){
            setState(() {
              selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home",),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/unselcat.png",width: 24,height: 24),activeIcon: Image.asset("assets/icons/selcat.png",height: 26,width: 26), label: "Category",),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/Cart-Fil1l.png",width: 24,height: 24),activeIcon: Image.asset("assets/icons/Cart-Fill.png",height: 26,width: 26), label: "Cart",),
            BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: "Profile",),


          ]),
    );
  }
}
