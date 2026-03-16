import 'package:final_project/models.dart';
import 'package:final_project/views/tabs.dart';
import 'package:flutter/material.dart';
class Categoryscreen extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 5,
      initialIndex: 0,
      child:
         Scaffold(
          body: Column(
            children: [
            TabBar(
              dividerColor: Colors.transparent,
              padding: EdgeInsets.all(0),
              unselectedLabelColor: Color(0xffA6A6A6),
              labelColor: Color(0xff121212),
              labelStyle: TextStyle(fontSize: 16 , fontWeight: .bold),
              tabs: [
                Tab(child: Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Text("All"),),),
                Tab(child: Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Text("Novels"),),),
                Tab(child: Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Text("Self Love"),),),
                Tab(child: Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Text("Science"),),),
                Tab(child: Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Text("Romantic"),),),
              ],),
            Expanded(child: TabBarView(
              children:[
                Alltab(),
                Alltab(),
                Alltab(),
                Alltab(),
                Alltab(),
              ],),),
          ],
          ),
        ),
    );
  }
}
