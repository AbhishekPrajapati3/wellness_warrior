import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  AnimationController animationController;
  Animation colorsTween, wellnessTween, warriorTween, iconTween, drawerTween;
  Function()? onPressed;

  CustomAppBar(
      {required this.colorsTween,
      required this.warriorTween,
      required this.drawerTween,
      required this.wellnessTween,
      required this.iconTween,
      required this.onPressed,
      required this.animationController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) => AppBar(
          leading: IconButton(
            icon: Icon(Icons.dehaze),
            color: drawerTween.value,
            onPressed: onPressed,
          ),
          backgroundColor: colorsTween.value,
          elevation: 0,
          title: Row(
            children: [
              Text(
                "Wellness",
                style: TextStyle(color: wellnessTween.value,fontSize: 20,fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10,),
              Text(
                "Warrior",
                style: TextStyle(color: warriorTween.value,fontWeight: FontWeight.bold,fontSize: 20),
              )
            ],
          ),
          actions: [Icon(Icons.notifications,color: Colors.orange,size: 30),Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(backgroundColor: Colors.black,),
          )],
        ),
      ),
    );
  }
}
