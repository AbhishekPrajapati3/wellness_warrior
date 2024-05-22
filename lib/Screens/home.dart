import 'package:flutter/material.dart';
import 'package:wellness_warrior/widgets/custom_app_bar.dart';
import 'package:wellness_warrior/widgets/custom_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorsTween,
      _wellnessTween,
      _warriorTween,
      _iconTween,
      _drawerTween;
  late AnimationController _textAnimationController;

  bool scrollListner(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorsTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _wellnessTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _warriorTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    super.initState();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      /* appBar: AppBar(
        title: Text("Wellness Warrior",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text("1"), Text("Streak")],
                  ),
                  Column(
                    children: [Text("1"), Text("Streak")],
                  ),
                  Column(
                    children: [Text("1"), Text("Streak")],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yoga For All"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      color: Colors.teal,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      color: Colors.teal,
                      height: 150,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yoga For Students"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      color: Colors.teal,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      color: Colors.teal,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      color: Colors.teal,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      color: Colors.teal,
                      height: 150,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),*/
      body: NotificationListener(
        onNotification: scrollListner,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 50, right: 50, top: 120, bottom: 20),
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                      Text(
                                        "Streak",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("125",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25)),
                                      Text("Kcl",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("23",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25)),
                                      Text("Minutes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Container(padding: EdgeInsets.only(bottom: 15,top: 5),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "Yoga For All",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  Container(margin: EdgeInsets.only(bottom: 15),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                         // margin: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'assets/images/yoga1.jpg'))),
                                        ),
                                        Container(
                                          height: 150,
                                        //  margin: EdgeInsets.all(20),
                                          color: Colors.black26,
                                        ),
                                        Positioned(
                                            left: 23,
                                            top: 13,
                                            child: Text(
                                              "Yoga For Begineers",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        Positioned(
                                            left: 35,
                                            top: 40,
                                            child: Text(
                                              "Last Time : 2 feb",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(margin: EdgeInsets.only(bottom: 15),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          // margin: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage('assets/images/yoga2.jpg'
                                                  ))),
                                        ),
                                        Container(
                                          height: 150,
                                          //  margin: EdgeInsets.all(20),
                                          color: Colors.black45,
                                        ),
                                        Positioned(
                                            left: 23,
                                            top: 13,
                                            child: Text(
                                              "10 Minute Yoga",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        Positioned(
                                            left: 35,
                                            top: 40,
                                            child: Text(
                                              "Last Time : 2 feb",
                                              style:
                                              TextStyle(color: Colors.white),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(padding: EdgeInsets.only(bottom: 15,top: 25),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "Yoga For Students",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  Container(margin: EdgeInsets.only(bottom: 15),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          // margin: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'assets/images/std1.jpg'))),
                                        ),
                                        Container(
                                          height: 150,
                                          //  margin: EdgeInsets.all(20),
                                          color: Colors.black54,
                                        ),
                                        Positioned(
                                            left: 23,
                                            top: 13,
                                            child: Text(
                                              "Yoga To Increase Concentration",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        Positioned(
                                            left: 35,
                                            top: 40,
                                            child: Text(
                                              "Last Time : 2 feb",
                                              style:
                                              TextStyle(color: Colors.white),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(margin: EdgeInsets.only(bottom: 15),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          // margin: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'assets/images/std2.jpg'))),
                                        ),
                                        Container(
                                          height: 150,
                                          //  margin: EdgeInsets.all(20),
                                          color: Colors.black54,
                                        ),
                                        Positioned(
                                            left: 23,
                                            top: 13,
                                            child: Text(
                                              "Yoga For Stress",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        Positioned(
                                            left: 35,
                                            top: 40,
                                            child: Text(
                                              "Last Time : 2 feb",
                                              style:
                                              TextStyle(color: Colors.white),
                                            ))
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  CustomAppBar(
                      colorsTween: _colorsTween,
                      warriorTween: _warriorTween,
                      drawerTween: _drawerTween,
                      wellnessTween: _wellnessTween,
                      iconTween: _iconTween,
                      onPressed: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      animationController: _animationController)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
