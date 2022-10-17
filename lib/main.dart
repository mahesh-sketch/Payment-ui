import 'dart:math';

import 'package:bank_system/recipient.dart';
import 'package:bank_system/salary.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'listm.dart';
import 'all_List.dart';
import 'tiles.dart';

void main() {
  runApp(const MyApp());
}

//function for using HEX color code:
int hexcolor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.network(
          'https://assets3.lottiefiles.com/private_files/lf30_eloaigya.json'),
      splashIconSize: 700,
      nextScreen: Homescreen(),
      duration: 3988,
    );
  }
}

GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _globalKey,
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 200,
                  color: Colors.black87,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201904/Hrithik_roshan.jpeg?OLcIzQf6Ftb3Q6vNniO3WmIQb_dfTEAV&size=770:433')),
                      ),
                      Text(
                        'Mahesh kumar Dash',
                        style: GoogleFonts.rubik(textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'maheshdash84821@gmail.com',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text(
                    'Wallet & Earnings',
                    style: GoogleFonts.ubuntu(textStyle:TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 170,
                  // color: Colors.pink,
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Listwidget(it: items[index], write: wr[index]);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text(
                    'Others',
                    style: GoogleFonts.ubuntu(textStyle:TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 400,
                  //  color: Colors.pink,
                  child: ListView.builder(
                    itemCount: item1.length,
                    itemBuilder: (context, index) {
                      return Listwidget(it: item1[index], write: wr1[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 330, top: 15),
                  width: 50,
                  height: 50,
                  // color: Colors.pink,
                  child: IconButton(
                      onPressed: () => _globalKey.currentState?.openDrawer(),
                      icon: Icon(Icons.menu)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  height: 50,
                  width: double.maxFinite,
                  //color: Colors.pink,
                  child: Text(
                    'Profit & Loss',
                    style:GoogleFonts.ubuntu(textStyle:TextStyle(fontSize: 30) ) ,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 220,
                  width: double.maxFinite,
                  // color: Colors.black,

                  child: Salary(),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  height: 40,
                  width: double.maxFinite,
                  // color: Colors.pink,
                  child: Text(
                    'Transaction',
                    style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 30)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 500,
                  width: double.maxFinite,
                  // color: Colors.pink,
                  child: Alltile(),
                )
              ],
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            items: [
              Icon(Icons.home),
              Icon(Icons.shop),
              Icon(Icons.apps_outlined),
              Icon(Icons.settings),
            ],
            animationDuration: Duration(seconds: 1),
            backgroundColor: Colors.transparent,
            animationCurve: Curves.fastOutSlowIn,
          )),
    );
  }
}

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();

  String? validatePass(value){
    if(value.isEmpty){
      return 'Required';
    }
    else{
      return null;
    }
  }
String total = '';
  _onchanged(String value){
    setState(() {
  total = value;
    });
  }
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 330, top: 15),
                  height: 40,
                  width: 40,
                  // color: Colors.pink,
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: 50,
                width: double.maxFinite,
                //color: Colors.pink,
                child: Text(
                  'From Card',
                  style:GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 30)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 200,
                width: 320,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(hexcolor('#D9AFD9')),
                        Color(hexcolor('#97D9E1')),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0, left: 10),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 35,
                        width: 300,
                        //    color: Colors.pink,
                        child: Text(
                          'Visa',
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0, right: 10),
                      child: Form(
                        child: Container(
                          height: 35,
                          width: double.maxFinite,
                          //  color: Colors.pink,
                          child: Row(
                            children: [
                              Text(
                                '....',
                                style: TextStyle(fontSize: 30),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('....', style: TextStyle(fontSize: 30)),
                              SizedBox(
                                width: 10,
                              ),
                              Text('....', style: TextStyle(fontSize: 30)),
                              SizedBox(
                                width: 10,
                              ),
                              Text('3809', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      height: 35,
                      width: 270,
                      // color: Colors.pink,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Mahesh Dash', style: TextStyle(fontSize: 20)),
                          Text('10/26', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: 40,
                width: double.maxFinite,
                // color: Colors.pink,
                child: Text(
                  'Choose Recipient',
                  style:GoogleFonts.ubuntu(textStyle:TextStyle(fontSize: 30)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: 120,
                    width: double.maxFinite,
                    // color: Colors.pink,
                    child: Person(),
                  ),

              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 20,right: 25),
                height: 225,
                width: double.maxFinite,
               // color: Colors.pink,
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formkey,
                  child: Column(
                    children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 18.0),
                           child: TextFormField(
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black87,
                            controller: _controller,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)
                                      .copyWith(bottomRight: Radius.circular(0)),
                                  borderSide: BorderSide(color: Colors.purple)),
                              prefixIcon: Icon(Icons.currency_rupee),
                              //icon: Icon(Icons.currency_rupee),
                              hintText: 'Money to Send',
                              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87)),
                            ),
                            validator:validatePass,
                             onChanged:_onchanged ,
                        ),
                         ),
                      SizedBox(
                        height: 20,
                      ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text("Total: $total",
                           style: TextStyle(fontSize: 20,color: Colors.grey),
                         ),
                       ],
                     ),
                     SizedBox(
                       height: 9,
                     ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: InkWell(
                          onTap:() {
                            if(formkey.currentState!.validate()){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentAnime()));
                            }
                          },
                          child: Container(
                              height: 60,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: Center(child: Text('Send',style: GoogleFonts.ubuntu(textStyle:TextStyle(fontSize: 20,color: Colors.white)),)),
                      ),
                        )
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class PaymentAnime extends StatelessWidget {
  const PaymentAnime({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Lottie.network("https://assets5.lottiefiles.com/packages/lf20_Qp0Vc7aAgy.json",
        fit: BoxFit.cover,repeat: false),
      ),
    );
  }

}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


