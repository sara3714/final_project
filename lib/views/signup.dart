import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

final GlobalKey<FormState> mykey = GlobalKey();

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: mykey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: .bold,
                    color: Color(0xff121212),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Create account and choose favorite menu ",
                  style: TextStyle(color: Color(0xffA6A6A6)),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "  Name",
                style: TextStyle(color: Color(0xff121212), fontWeight: .bold),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return " Name is required";
                    }
                    if (val.length < 3) {
                      return "Name must be at least 3 charcters long";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: Color(0xffFAFAFA),
                    filled: true,
                    hintText: "Your name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade50),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "  Email",
                style: TextStyle(color: Color(0xff121212), fontWeight: .bold),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "email is required";
                    }
                    bool emailValid = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    ).hasMatch(val);
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
              Text(
                "  Password",
                style: TextStyle(color: Color(0xff121212), fontWeight: .bold),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
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
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      if (mykey.currentState!.validate()) {
                        Navigator.of(context).popAndPushNamed("/login");
                      }
                    },
                    child: Text("Register"),
                    textColor: Colors.white,
                    color: Color(0xff54408C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(24),
                      side: BorderSide(color: Colors.purple, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "alredy have account",
                    style: TextStyle(color: Color(0xffA6A6A6)),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    child: Text(
                      "Sign in ",
                      style: TextStyle(
                        color: Color(0XFF54408C),
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
