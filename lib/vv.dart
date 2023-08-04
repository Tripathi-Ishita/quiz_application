import 'package:flutter/material.dart';
import 'Python.dart';
import 'Flutter.dart';
import 'lang_grammar.dart';
import 'aptitude.dart';
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Positioned(
                      left: 30,
                      height: 150,
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/light-1.png"))),
                      )),
                  Positioned(
                      left: 140,
                      height: 100,
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/light-2.png"))),
                      )),
                  Positioned(
                      right: 40,
                      top: 20,
                      height: 150,
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/clock.png"))),
                      )),
                  Positioned(
                      child: Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Center(
                      child: Text(
                        "Welcome to Quix",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Itim",
                            fontSize: 34,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>PythonQuix()));
                  },
                  child: Container(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(255,249,137,1),
                                Color.fromRGBO(226,183,40,1),


                              ])),
                        ),
                        Positioned(
                          top: -10,
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Image(image: AssetImage("assets/py.png")),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 40,
                              left: MediaQuery.of(context).size.width*0.33),
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                size: MediaQuery.of(context).size.width * 0.15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 100,
                                width: 300,
                                child: Text(
                                  "Open Python Quiz",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Itim",
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),


                ), GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>FlutterQuix()));
                  },
                  child: Container(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(156,252,248,1),
                                Color.fromRGBO(110,123,251,1),

                              ])),
                        ),
                        Positioned(
                          top: -10,
                          left: -30,
                          child: SizedBox(
                            height: 150,
                            width: 200,
                            child: Image(image: AssetImage("assets/flutter.png")),
                          ),
                        ),
                        Padding(
                           padding:  EdgeInsets.only(top: 40,
                              left: MediaQuery.of(context).size.width*0.33),
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                size: MediaQuery.of(context).size.width * 0.15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 100,
                                width: 300,
                                child: Text(
                                  "Open Flutter Quiz",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Itim",
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>languageQuix()));
                  },
                  child: Container(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(255,209,67,1),
                                Color.fromRGBO(255,145,83,1),

                              ])),
                        ),
                        Positioned(
                          top: -17,
                          child: SizedBox(
                            height: 140,
                            width: 180,
                            child: Image(image: AssetImage("assets/lan.png")),
                          ),
                        ),
                        Padding(
                           padding:  EdgeInsets.only(top: 40,
                              left: MediaQuery.of(context).size.width*0.33),
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                size: MediaQuery.of(context).size.width * 0.15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 100,
                                width: 300,
                                child: Text(
                                  "Open Langauge and Grammar Quiz",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Itim",
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>aptiudeQuix()));
                  },
                  child: Container(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(100,43,115,1) ,
                                Color.fromRGBO(4,0,4,1),

                              ])),
                        ),
                        Positioned(
                          top: -10,
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Image(image: AssetImage("assets/apti.png")),
                          ),
                        ),
                        Padding(
                           padding:  EdgeInsets.only(top: 40,
                              left: MediaQuery.of(context).size.width*0.35),
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                size: MediaQuery.of(context).size.width * 0.15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 100,
                                width: 300,
                                child: Text(
                                  "Open Aptitude Quiz",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Itim",
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
