import 'package:flutter/material.dart';
import 'package:hardware_new/components/image_causerol.dart';
import 'dart:ui';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

Map<String, dynamic> data = {
    "isRegisted": true,
    "for": "Boys",
    'fee': {'per': 'Month', 'cost': 4000},
    'location': {
      'address': "15/1 , ABC Rd, ABC, 11850",
      'lat': 7.526525,
      'lng': 8.265977
    },
    'available': 5,
    'about':
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam justo velit, iaculis ac diam et, condimentum molestie felis. Curabitur maximus turpis ut vehicula aliquet. Proin vitae eleifend metus Nullam justo velit, iaculis ac diam et, condimentum molestie felis. Curabitur maximus turpis ut vehicula aliquet. Proin vitae eleifend metus",
    'images': [
      'assets/imgs/brush.jpg',
      'assets/imgs/stee.jpg',
      'assets/imgs/cement.jpg',
      'assets/imgs/cement.png',
      'assets/imgs/logo.png',
      
    ],
    'owner': {
      'name': "Rental Surat",
      'who': "Owner",
      'image': "assets/imgs/logo.png",
      'contact_no': "+94750001112"
    },
    'rating': {
      'overall': 4.5,
      'outof': 5,
      'reviews': [
        {
          'avatar': 'assets/imgs/logo.png',
          'user_name': 'ACV IOP',
          'rate': 4.5,
          'review':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam justo velit, iaculis ac diam et, condimentum molestie felis. Curabitur maximus turpis ut vehicula aliquet. Proin vitae eleifend metus Nullam justo velit, iaculis ac diam et, condimentum molestie felis. Curabitur maximus turpis ut vehicula aliquet. Proin vitae eleifend metus',
        },
        {
          'avatar': 'assets/imgs/logo.png',
          'user_name': 'IOP IOP',
          'rate': 4.6,
          'review': 'Lorem ipsum ',
        },
      ],
    },
    'facilities': [
      {
        'category': 1,
        'type': "Table",
        'amount': 3,
        'description': "",
        'price': 0,
      },
      {
        'category': 2,
        'type': "Hot Shower",
        'amount': 3,
        'description': "",
        'price': 0,
      },
      {
        'category': 3,
        'type': "Breakfest",
        'amount': 3,
        'description': "with 03 curies",
        'price': 120,
      },
      {
        'category': 3,
        'type': "Lunch",
        'amount': 3,
        'description': "with 04 curies",
        'price': 120,
      },
      {
        'category': 4,
        'type': "Breakfest",
        'amount': 3,
        'description':
            "with 03 curieswith 03 curieswith 03 curieswith 03 curieswith 03 curieswith 03 curieswith 03 curies",
        'price': 120,
      }
    ],
    'user': {
      'id': "u1256369554",
      'name': 'USER UIO',
      'image': 'assets/imgs/logo.png'
    }
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      
      appBar: AppBar(
        
         backgroundColor: Color(0xE5E5E5),
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
            backgroundImage: AssetImage('assets/imgs/logo.png'),
          ),
        ),
      ),
      body: SafeArea(  
         child: SingleChildScrollView(
            child: Column(children: [  
              
                Container(
                    margin: const EdgeInsets.only(left: 10, top: 10, right: 200, bottom: 10),
                    child: Text(
                      "Find Your\nNeed",
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
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins"),
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [Tab(text: "Hardware Items"), Tab(text: "Workers")],
                    ),
                  ),
                ),
                Container(
                        margin:EdgeInsets.only(top: 25, left: 25, right: 25) ,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 5,left:5),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: TextField(
                                  style: TextStyle( height: 0.5 ),
                                    cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(right: 15,left: 18),
                                        fillColor: Colors.white,
                                        filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide.none
                                          ),
                                        hintText: 'Search Category...',
                                        hintStyle: TextStyle(
                                          
                                          fontFamily: 'poppins',
                                          color: Colors.grey,
                                          fontSize: 16
                                        ),
                                      ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only (left: 10),
                                padding: EdgeInsets.only(right:5,left: 5),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: IconButton(
                                      icon: Icon(Icons.search, color: Colors.white),                                  
                                      onPressed: () {
                                        print("b"); 
                                      },
                                    ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                        ),
                Container(
                  height: 200,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 18),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Most Popular Items",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: "poppins",
                                          fontSize: 14,
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            height: 1),
                                      ),
                                    ),
                                  ]),
                            ),
                           
                           ImageCauserol(
                              context: context,
                                imgs: data['images'],
                              ),
                            ],
                        ),
                            
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
              ]),
          )),
    );
  }
}