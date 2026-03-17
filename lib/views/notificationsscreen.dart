import 'package:flutter/material.dart';

class Notificationsscreen extends StatefulWidget {
  const Notificationsscreen({super.key});

  @override
  State<Notificationsscreen> createState() => _NotificationsscreenState();
}

class _NotificationsscreenState extends State<Notificationsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).popAndPushNamed("/home");
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Notification",
          style: TextStyle(
            color: Color(0xff121212),
            fontSize: 16,
            fontWeight: .bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Current",
              style: TextStyle(
                color: Color(0xff121212),
                fontSize: 16,
                fontWeight: .bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              margin: EdgeInsets.all(18),
              padding: EdgeInsets.all(18),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/avbook1.png",
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Carrie Fisher",
                              style: TextStyle(fontWeight: .bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "On the way",
                              style: TextStyle(color: Color(0xff3784FB)),
                            ),
                            Text(
                              "1 items",
                              style: TextStyle(color: Color(0xff7A7A7A)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "October 2021",
              style: TextStyle(
                color: Color(0xff121212),
                fontSize: 16,
                fontWeight: .bold,
              ),
            ),
            ///// ال لطعه الكبيرههههههههه
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              margin: EdgeInsets.all(18),
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/avbook2.png",
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(width: 18),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "The Da vinci Code",
                                  style: TextStyle(fontWeight: .bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivered",
                                  style: TextStyle(color: Color(0xff18A057)),
                                ),
                                Text(
                                  "1 items",
                                  style: TextStyle(color: Color(0xff7A7A7A)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 1, color: Color(0xffE8E8E8)),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/avbook4.png",
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(width: 18),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Carrie Fisher",
                                  style: TextStyle(fontWeight: .bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivered",
                                  style: TextStyle(color: Color(0xff18A057)),
                                ),
                                Text(
                                  "5 items",
                                  style: TextStyle(color: Color(0xff7A7A7A)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 1, color: Color(0xffE8E8E8)),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/avbook6.png",
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(width: 18),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "The Waiting",
                                  style: TextStyle(fontWeight: .bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cancelled",
                                  style: TextStyle(color: Color(0xffEF5A56)),
                                ),
                                Text(
                                  "2 items",
                                  style: TextStyle(color: Color(0xff7A7A7A)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
