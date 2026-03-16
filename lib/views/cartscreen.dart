import 'package:flutter/material.dart';
class Cartscreen extends StatefulWidget {
   Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  int counter = 1 ;
  int price1 = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        ListTile(
          leading: Image.asset("assets/images/avbook6.png"),
          title: Text("Regular Fit Slogan"),
          subtitle: Text(r"$ 20.99"),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(onPressed: (){}, icon: Image.asset("assets/icons/Trash.png")),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MaterialButton(onPressed: (){
                      setState(() {
                        if(counter>1){
                          counter -- ;
                        }
                      });

                    },
                      child: Image.asset("assets/icons/Minus@255x.png"),
                    ),
                    Text("$counter"),
                    MaterialButton(onPressed: (){
                      setState(() {
                        if(counter>1){
                          counter ++ ;
                        }
                      });

                    },
                      child: Image.asset("assets/icons/Plus@2x.png"),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),

          
        ],
      ),
    );
  }
}
