import 'package:flutter/material.dart';
class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child:Divider(thickness: 1,color: Color(0xffE8E8E8),),

          ),
          ListTile(
            leading: Image.asset("assets/images/PROFILE.png"),
            title: Text("John Doe"),
            subtitle: Text("(+1) 234 567 890"),
            trailing: TextButton(onPressed: (){
              Navigator.of(context).pop("/login");
            }, child: Text("Logout")),
          ),
          Expanded(
            child:Divider(thickness: 1,color: Color(0xffE8E8E8),),

          ),
        ],
      ),
    );
  }
}
