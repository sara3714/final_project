import 'package:flutter/material.dart';

import '../models.dart';


class Alltab extends StatelessWidget {
   Alltab({super.key});
    List<Avilablebboks> avbooks = [
    Avilablebboks(eimage: "assets/images/avbook1.png",etitle: "The Da vinci Code",eprice: r"$19.99"),
    Avilablebboks(eimage: "assets/images/avbook2.png",etitle: "Carrie Fisher",eprice: r"$27.12"),
    Avilablebboks(eimage: "assets/images/avbook3.png",etitle: "The Good Sister",eprice: r"$27.12"),
    Avilablebboks(eimage: "assets/images/avbook4.png",etitle: "The Waiting",eprice: r"$27.12"),
    Avilablebboks(eimage: "assets/images/avbook5.png",etitle: "Where Are You",eprice: r"$27.12"),
    Avilablebboks(eimage: "assets/images/avbook6.png",etitle: "Bright Young Women",eprice: r"$27.12"),
    Avilablebboks(eimage: "assets/images/avbook1.png",etitle: "The Da vinci Code",eprice: r"$19.99"),
    Avilablebboks(eimage: "assets/images/avbook2.png",etitle: "Carrie Fisher",eprice: r"$27.12"),
    Avilablebboks(eimage: "assets/images/avbook3.png",etitle: "The Good Sister",eprice: r"$27.12"),
    Avilablebboks(eimage: "assets/images/avbook4.png",etitle: "The Waiting",eprice: r"$27.12"),
    Avilablebboks(eimage: "assets/images/avbook5.png",etitle: "Where Are You",eprice: r"$27.12"),
    Avilablebboks(eimage: "assets/images/avbook6.png",etitle: "Bright Young Women",eprice: r"$27.12"),
  ];

  GlobalKey<ScaffoldState>scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding:EdgeInsets.all(16) ,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10,mainAxisSpacing: 10, childAspectRatio: 2/3),
        itemCount: avbooks.length,
        itemBuilder: (context,index){
          return GridTile(
            child:Container(
              height: 200,
              child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Image.asset(avbooks[index].eimage),
                Text(avbooks[index].etitle),
                Text(avbooks[index].eprice),
              ],
            ),),


          );
        },);

  }
}
