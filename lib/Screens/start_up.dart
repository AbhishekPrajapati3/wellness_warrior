import 'package:flutter/material.dart';
import 'package:wellness_warrior/Screens/readyTimer.dart';

class StartUp extends StatefulWidget {
  const StartUp({super.key});

  @override
  State<StartUp> createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ReadyTimer()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink,
        ),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "Start",
              style: TextStyle(fontSize: 25, color: Colors.white),
            )),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Yoga  For Begineer",
                  style: TextStyle(color: Colors.white),
                ),
                background: Image.asset(
                  'assets/images/yoga1.jpg',
                  fit: BoxFit.cover,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                  ))
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(9),
              child: Column(
                children: [
                  Row(children: [
                    Text(
                      "16 Minutes ||26 Workouts",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ]),
                  Divider(
                    thickness: 2,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => Divider(
                            thickness: 2,
                          ),
                      itemBuilder: (context, index) => ListTile(
                            leading: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  'assets/images/yoagaB1.gif',
                                  fit: BoxFit.cover,
                                )),
                            title: Text(
                              "Yoga ${index + 1}",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text("0:30 min"),
                          ),
                      itemCount: 20)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
