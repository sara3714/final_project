import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../models.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
List<Datamodel> datalist = [
  Datamodel(simage: "assets/images/05.png"),
  Datamodel(simage: "assets/images/05.png"),
  Datamodel(simage: "assets/images/05.png"),
];
List<Vendorsmodel> vendorslist = [
  Vendorsmodel(vimage: "assets/images/0.png"),
  Vendorsmodel(vimage: "assets/images/1.png"),
  Vendorsmodel(vimage: "assets/images/2.png"),
  Vendorsmodel(vimage: "assets/images/3.png"),
  Vendorsmodel(vimage: "assets/images/0.png"),
  Vendorsmodel(vimage: "assets/images/1.png"),
  Vendorsmodel(vimage: "assets/images/2.png"),
  Vendorsmodel(vimage: "assets/images/3.png"),
];
List<Booksmodel> bookslist = [
  Booksmodel(
    bimage: "assets/images/Mask Group.png",
    btitle: "The Kite Runner",
    bprice: r"$14.99",
  ),
  Booksmodel(
    bimage: "assets/images/Mask Group (1).png",
    btitle: "The Kite Runner",
    bprice: r"$14.99",
  ),
  Booksmodel(
    bimage: "assets/images/BOOK3.png",
    btitle: "The Kite Runner",
    bprice: r"$14.99",
  ),
  Booksmodel(
    bimage: "assets/images/Mask Group (1).png",
    btitle: "The Kite Runner",
    bprice: r"$14.99",
  ),
  Booksmodel(
    bimage: "assets/images/Mask Group.png",
    btitle: "The Kite Runner",
    bprice: r"$14.99",
  ),
  Booksmodel(
    bimage: "assets/images/BOOK3.png",
    btitle: "The Kite Runner",
    bprice: r"$14.99",
  ),
];
List<Authorsmodel> authorslist = [
  Authorsmodel(
    aimage: "assets/images/Image (2).png",
    aname: "John Freeman",
    ajob: "Writer",
  ),
  Authorsmodel(
    aimage: "assets/images/Image (1).png",
    aname: "Richard Perston",
    ajob: "Writer",
  ),
  Authorsmodel(
    aimage: "assets/images/Image.png",
    aname: "Abraham verghese",
    ajob: "Writer",
  ),
  Authorsmodel(
    aimage: "assets/images/Image (2).png",
    aname: "John Freeman",
    ajob: "Writer",
  ),
  Authorsmodel(
    aimage: "assets/images/Image (1).png",
    aname: "Richard Perston",
    ajob: "Writer",
  ),
  Authorsmodel(
    aimage: "assets/images/Image.png",
    aname: "Abraham verghese",
    ajob: "Writer",
  ),
];

class _HomescreenState extends State<Homescreen> {
  int currentindex = 0;
  PageController scontroller = PageController();
  void initState() {
    super.initState();
    scrollpage();
  }

  void scrollpage() {
    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {
        int nextstep = (currentindex < datalist.length - 1)
            ? currentindex + 1
            : 0;
        scontroller.animateToPage(
          nextstep,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
      scrollpage();
    });
  }

  void bookdetails(BuildContext context, Booksmodel book) {
    int numofbooks = 1;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext, StateSetter setnum) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsetsGeometry.all(10),
                  child: Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // grey line
                      Center(
                        child: Container(
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Color(0xffE8E8E8),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      // image
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            book.bimage,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // book name & icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "The Kite Runner",
                            style: TextStyle(color: Color(0xff121212)),
                          ),
                          Container(
                            child: Image.asset("assets/icons/Group.png"),
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                      // book details
                      Image.asset("assets/images/2.png"),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra dignissim ac ac ac. Nibh et sed ac, eget malesuada.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra dignissim ac ac ac. Nibh et sed ac, eget malesuada.",
                        style: TextStyle(color: Color(0xffA6A6A6)),
                      ),
                      Text(
                        "Review",
                        style: TextStyle(color: Color(0xff121212)),
                      ),
                      Image.asset("assets/images/Auto Layout Horizontal.png"),
                      Row(
                        children: [
                          // minus button
                          MaterialButton(
                            onPressed: () {
                              setnum(() {
                                if (numofbooks > 1) {
                                  numofbooks--;
                                }
                              });
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xffE8E8E8),
                              ),
                              child: Image.asset(
                                "assets/icons/Minus@2x.png",
                                height: 15,
                                width: 15,
                              ),
                            ),
                          ),
                          // current numbers of books
                          Text(" $numofbooks "),
                          // plus button
                          MaterialButton(
                            onPressed: () {
                              setnum(() {
                                numofbooks++;
                              });
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xff54408C),
                              ),
                              child: Image.asset(
                                "assets/icons/Plus.png",
                                height: 15,
                                width: 15,
                              ),
                            ),
                          ),
                          Text(
                            book.bprice,
                            style: TextStyle(color: Color(0xff54408C)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff54408C),
                                  foregroundColor: Color(0xffFFFFFF),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: Text("Continue shopping"),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsetsGeometry.all(10),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffFFFFFF),
                                  foregroundColor: Color(0xff54408C),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: Text("View cart"),
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
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: scontroller,
                onPageChanged: (value) {
                  setState(() {
                    currentindex = value;
                  });
                },
                itemCount: datalist.length,
                itemBuilder: (context, index) {
                  final item = datalist[index];
                  return Image.asset(item.simage);
                },
              ),
            ),
            new DotsIndicator(
              dotsCount: datalist.length,
              position: currentindex.toDouble(),
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                activeColor: Color(0xff54408C),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top of Week",
                  style: TextStyle(
                    color: Color(0xff121212),
                    fontWeight: .bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(color: Color(0xff54408C), fontWeight: .bold),
                  ),
                ),
              ],
            ),
            //listview1
            SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: bookslist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  Booksmodel currentbook = bookslist[index];
                  return InkWell(
                    onTap: () {
                      bookdetails(context, currentbook);
                    },
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(currentbook.bimage),

                          Text(
                            currentbook.btitle,
                            style: TextStyle(color: Color(0xff121212)),
                          ),
                          Text(
                            currentbook.bprice,
                            style: TextStyle(color: Color(0xff54408C)),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Vendors",
                  style: TextStyle(
                    color: Color(0xff121212),
                    fontWeight: .bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(color: Color(0xff54408C), fontWeight: .bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: vendorslist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  Vendorsmodel currentvendor = vendorslist[index];
                  return Padding(
                    padding: EdgeInsetsGeometry.all(6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Image.asset(currentvendor.vimage)],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Authors",
                  style: TextStyle(
                    color: Color(0xff121212),
                    fontWeight: .bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(color: Color(0xff54408C), fontWeight: .bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: authorslist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  Authorsmodel currentauthor = authorslist[index];
                  return Padding(
                    padding: EdgeInsetsGeometry.all(6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(currentauthor.aimage),
                        Text(
                          currentauthor.aname,
                          style: TextStyle(
                            color: Color(0xff111111),
                            fontWeight: .bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          currentauthor.aname,
                          style: TextStyle(color: Color(0xffA6A6A6)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
