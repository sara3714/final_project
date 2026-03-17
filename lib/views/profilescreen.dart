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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                children: [
                  Divider(thickness: 1, color: Color(0xffE8E8E8)),

                  ListTile(
                    leading: Image.asset("assets/images/PROFILE.png"),
                    title: Text("John Doe"),
                    subtitle: Text("(+1) 234 567 890"),
                    trailing: TextButton(
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed("/login");
                      },
                      child: Text(
                        "Logout",
                        style: TextStyle(color: Color(0xffEF5A56)),
                      ),
                    ),
                  ),
                  Divider(thickness: 1, color: Color(0xffE8E8E8)),
                ],
              ),
            ),
            //listtile1
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_2_rounded, color: Color(0xff54408C)),
                radius: 34,
                backgroundColor: Colors.grey.shade300,
              ),
              title: Text(
                "My Account",
                style: TextStyle(color: Color(0xff121212)),
              ),
              trailing: Image.asset(
                "assets/icons/Property 1=Chevron Right.png",
              ),
            ),
            SizedBox(height: 10),
            // listtile2
            ListTile(
              leading: CircleAvatar(
                child: Image.asset("assets/icons/Location@2x.png", scale: 1.5),

                radius: 34,
                backgroundColor: Colors.grey.shade300,
              ),
              title: Text(
                "Address",
                style: TextStyle(color: Color(0xff121212)),
              ),
              trailing: Image.asset(
                "assets/icons/Property 1=Chevron Right.png",
              ),
            ),
            SizedBox(height: 10),
            //listtile3
            ListTile(
              leading: CircleAvatar(
                child: Image.asset("assets/icons/Fire@2x.png", scale: 1.5),
                radius: 34,
                backgroundColor: Colors.grey.shade300,
              ),
              title: Text(
                "Offers & Promos",
                style: TextStyle(color: Color(0xff121212)),
              ),
              trailing: Image.asset(
                "assets/icons/Property 1=Chevron Right.png",
              ),
            ),
            SizedBox(height: 10),
            //listtile4
            ListTile(
              leading: CircleAvatar(
                child: Image.asset("assets/icons/Group.png", scale: 1.0),
                radius: 34,
                backgroundColor: Colors.grey.shade300,
              ),
              title: Text(
                "Your Favorites",
                style: TextStyle(color: Color(0xff121212)),
              ),
              trailing: Image.asset(
                "assets/icons/Property 1=Chevron Right.png",
              ),
            ),
            SizedBox(height: 10),
            //listtile5
            ListTile(
              leading: CircleAvatar(
                child: Image.asset("assets/icons/selcat.png", scale: 1.5),
                radius: 34,
                backgroundColor: Colors.grey.shade300,
              ),
              title: Text(
                "Order History",
                style: TextStyle(color: Color(0xff121212)),
              ),
              trailing: Image.asset(
                "assets/icons/Property 1=Chevron Right.png",
              ),
            ),
            //last listtile
            SizedBox(height: 10),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset("assets/icons/Chat@2x.png", scale: 1.5),
                radius: 34,
                backgroundColor: Colors.grey.shade300,
              ),
              title: Text(
                "Help Center",
                style: TextStyle(color: Color(0xff121212)),
              ),
              trailing: Image.asset(
                "assets/icons/Property 1=Chevron Right.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
