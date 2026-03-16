import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> mykey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),
        body: Form(
          key: mykey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(10),
                child: Text("Welcome Back 👋",
                  style: TextStyle(fontSize: 40, fontWeight: .bold),),
              ),
              Padding(padding: EdgeInsets.all(10),
                child: Text("Sign to your account",
                  style: TextStyle(color: Color(0xffA6A6A6)),),
              ),
              SizedBox(height: 40),
              Text("  Email"),
              Padding(padding: EdgeInsets.all(10), child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "email is required";
                  }
                  bool emailValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(val);
                  if (!emailValid) {
                    return "The email format is incorrect";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  fillColor: Color(0xffFAFAFA),
                  filled: true,
                  hintText: "Your email",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey.shade50),

                  ),
                ),
              ),
              ),
              SizedBox(height: 20),
              Text("  Password"),
              Padding(padding: EdgeInsets.all(10), child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: true,
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "password is required";
                  }
                  if (val.length < 8) {
                    return "password must be at least 8 charcters long";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  fillColor: Color(0xffFAFAFA),
                  filled: true,
                  hintText: "Your password",
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey.shade50),
                  ),
                ),
              ),),
              SizedBox(height: 10),
              Container(
                child: Text("  Forget password ? ", style: TextStyle(
                    color: Color(0xff54408C), fontWeight: .bold),),
              ),
              SizedBox(height: 20),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: MaterialButton(onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, "/home",(route)=>false);
                  },
                    child: Text("LOGIN"),
                    textColor: Colors.white,
                    color: Color(0xff54408C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(24),
                      side: BorderSide(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ?",
                    style: TextStyle(color: Color(0xffA6A6A6)),),
                  MaterialButton(onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                    child: Text("Sign up ", style: TextStyle(
                        color: Color(0XFF54408C), fontWeight: .bold),),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 1, color: Color(0xffE8E8E8),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or With", style: TextStyle(
                        color: Color(0xffE8E8E8), fontWeight: .bold),),
                  ),
                  Expanded(
                    child: Divider(thickness: 1, color: Color(0xffE8E8E8),),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                spacing: 10,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(24),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    width: double.infinity,
                    height: 40,
                    child: Padding(padding: EdgeInsets.all(10), child: Row(
                      children: [
                        Image.asset("assets/images/Google - Original.png"),
                        Text("Sign in with Google", style: TextStyle(
                            color: Color(0xff121212)),),
                      ],
                    ),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(24),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    width: double.infinity,
                    height: 40,
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.apple),
                          Text("Sign in with Google", style: TextStyle(
                              color: Color(0xff121212)),),
                        ],
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),),
      );

  }
}
