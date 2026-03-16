import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
class  Datamodel {
  String simage ;
  String stitle ;
  String sdescription ;
  Datamodel({
    required this.simage,
    required this.stitle,
    required this.sdescription,
  });
}
class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}
List<Datamodel> datalist =[
  Datamodel(simage: "assets/images/Frame.png", stitle: "Now reading books will be easier", sdescription: " Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us."),
  Datamodel(simage: "assets/images/Frame (1).png", stitle: "Your Bookish Soulmate Awaits", sdescription: "Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience."),
  Datamodel(simage: "assets/images/Frame (2).png", stitle: "Start Your Adventure", sdescription: "Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let's go!"),
];

class _OnboardingState extends State<Onboarding> {
  int currentindex = 0;
  PageController scontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: TextButton(onPressed: (){
            Navigator.of(context).pushReplacementNamed("/login");
          }, child: Text("Skip",style: TextStyle(color: Color(0xff54408C)),),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView.builder(
                controller: scontroller,
                onPageChanged: (value){
                  setState(() {
                    currentindex = value ;
                  });
                },
                itemCount: datalist.length,
                itemBuilder: (context,index){
                  final item = datalist[index];
                  return Image.asset(item.simage);
                }),
          ),
          SizedBox(height: 30),
          Padding(padding: EdgeInsetsGeometry.all(16),
            child: Text(datalist[currentindex].stitle,style: TextStyle(fontSize: 24,fontWeight: .bold),textAlign: .center,),
          ),
          Padding(padding: EdgeInsetsGeometry.all(16),
            child:  Text(datalist[currentindex].sdescription,textAlign: .center,),
          ),
          new DotsIndicator(
            dotsCount: datalist.length,
            position: currentindex.toDouble(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              activeColor: Color(0xff54408C),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            child:  Padding(padding: EdgeInsetsGeometry.all(16),
              child: ElevatedButton(onPressed: (){
                if(currentindex== datalist.length-1){
                  Navigator.of(context).pushReplacementNamed("/login");
                }else{scontroller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);}
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff54408C),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12),),
                ),

                child: Text(currentindex == datalist.length - 1 ? "GET STARTED" : "NEXT",style: TextStyle(
                  color: Colors.white,
                ),),
              ),
            ),
          ),

        ],
      ),
    );
  }
}