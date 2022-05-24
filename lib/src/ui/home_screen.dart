

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                print("A");
              },
            ),
          )
        ],
        leading: Container(
          margin: EdgeInsets.only(left: 18, top: 12, bottom: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.png'),
          ),
        ),
      ),
      body: SafeArea(
        
          child: Column(children: [
            
        Container(
            margin: const EdgeInsets.only(left: 10, top: 10, right: 200, bottom: 10),
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
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 45, right: 40),
              controller: _tabController,
              labelColor: Colors.black,
              labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: "poppins"),
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [Tab(text: "Hardware Items"), Tab(text: "Workers")],
            ),
          ),
        ),
        Row(children: [
          TextField(),
          IconButton(
              onPressed: () {
                // showSearch(
                //   context: context,
                //   delegate: CustomSearchDelegate(),
                // );
              },
              icon: Icon(Icons.search))
        ]),
        Container(
          height: 100,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, top: 2),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Popular Items",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            height: 1.15),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        child: Text(
                          "See all",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              height: 1),
                        ),
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 2),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            height: 1.15),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        child: Text(
                          "See all",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              height: 1),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        )
      ])),
    );
  }
}

// class CustomSearchDelegate extends SearchDelegate{
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     // TODO: implement buildActions
//     // throw UnimplementedError();
//   }
//   @override
//   Widget buildLeading(BuildContext context){

//   }
//    @override
//   Widget buildResults(BuildContext context){

//   }
//    @override
//   Widget buildSuggestions(BuildContext context){

//   }

  



