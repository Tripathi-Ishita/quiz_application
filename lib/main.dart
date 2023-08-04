import 'dart:async';
import 'vv.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Itim"),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage() ));
    }
    );
  }
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    final double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: width,
        height: height,
        child:Stack(
          children: [
            Positioned(
                top: 0,
                left: 0
                ,child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/62369.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            )),
            Positioned(

                left: -20,
                top: 200,
                right: -20
                ,child: Center(
                  child: Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/ques.png"),
                        fit: BoxFit.cover
                    )
              ),
            ),
                )),
           Positioned(
             bottom: 250,
               right: 60,
               child: Text(
             "Welcome to Quix App",style: TextStyle(
             fontSize: 30,
             fontFamily: "Itim",color: Color.fromRGBO(183, 99, 255, 1)
           ),
           ))

          ],
        ),
      ),
    );
  }
}
