import 'dart:ffi';

import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  int counter = 1;
  int counter2 = 1;
  double subtotal = 48.11;
  double total = 78.11;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade300),
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(18),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/avbook6.png",
                  height: 100,
                  width: 100,
                ),
                SizedBox(width: 18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Regular Fit Slogan"),
                          SizedBox(width: 5),
                          Image.asset("assets/icons/Trash.png"),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(r"$ 20.99"),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (counter > 1) {
                                      counter--;
                                      subtotal -= 20.99;
                                      total -= 20.99;
                                    }
                                  });
                                },
                                icon: Image.asset(
                                  "assets/icons/Minus@255x.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                              Text("$counter"),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    counter++;
                                    subtotal += 20.99;
                                    total += 20.99;
                                  });
                                },
                                icon: Image.asset(
                                  "assets/icons/Plus@2x.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade300),
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(18),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/avbook5.png",
                  height: 100,
                  width: 100,
                ),
                SizedBox(width: 18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("where are you"),
                          SizedBox(width: 5),
                          Image.asset("assets/icons/Trash.png"),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(r"$ 27.12"),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (counter2 > 1) {
                                      counter2--;
                                      subtotal -= 27.12;
                                      total -= 27.12;
                                    }
                                  });
                                },
                                icon: Image.asset(
                                  "assets/icons/Minus@255x.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                              Text("$counter2"),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    counter2++;
                                    subtotal += 27.12;
                                    total += 27.12;
                                  });
                                },
                                icon: Image.asset(
                                  "assets/icons/Plus@2x.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sub-total", style: TextStyle(color: Color(0xff808080))),
                Text("$subtotal"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("VAT (%)", style: TextStyle(color: Color(0xff808080))),
                Text(r"$0.00"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping fee",
                  style: TextStyle(color: Color(0xff808080)),
                ),
                Text(r"$30.0"),
              ],
            ),
          ),
          Divider(thickness: 1, color: Color(0xffE8E8E8)),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total", style: TextStyle(color: Color(0xff1A1A1A))),
                Text("$total"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
