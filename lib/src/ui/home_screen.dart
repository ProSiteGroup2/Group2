import 'package:flutter/material.dart';

mixin HomeScreen implements StatefulWidget, TickerProviderStateMixin<StatefulWidget> {
 
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          Container(
            margin: EdgeInsets.all(15),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.black45),
              onPressed: () {
                print("A");
              },
            ),
          )
        ],
        leading: Container(
          margin: EdgeInsets.only(left: 25),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.png'),
          ),
        ),
      ),
      body: SafeArea(
          child: Column(children: [
        Container(
            margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
            child: Text(
              "Find your\nNeed",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  height: 1.15),
            )),
        Container(
          child: TabBar(
            tabs: [Tab(text: "Hardware Items"), Tab(text: "Workers")],
          ),
        ),
        Container(
          child: TabBarView(
            children: [
              Text("Con"),
              Text("Wor"),
            ],
          ),
        )
      ])),
    );
  }
}
