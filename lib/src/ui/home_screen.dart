import 'package:flutter/material.dart';
import 'package:hardware_new/Common/size.dart';
import 'package:hardware_new/Components/image_causerol.dart';
import 'package:hardware_new/Components/image_causerol_a.dart';
import 'package:hardware_new/src/ui/Steel.dart';
import 'package:hardware_new/src/ui/Bricks.dart';
import 'package:hardware_new/src/ui/Cement.dart';
import 'package:hardware_new/src/ui/Sand.dart';
import 'package:hardware_new/src/ui/item_details.dart';


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
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
           child:Scaffold(
                appBar: AppBar(

                      backgroundColor: Color(0xE5E5E5),
                      elevation: 0,    
                      
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
                      bottom: new PreferredSize(
                        preferredSize:new Size.fromHeight(kPropHeight(context, 0.2)),
                        child: Column(
                          children: [
                            Container(
                            margin: const EdgeInsets.only(left: 10, top: 5, right: 200, bottom: 10),
                            child: Text(
                              "Find Your\nNeed",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                  height: 1.15),
                            )),
                            const TabBar(
                                    labelPadding: const EdgeInsets.only(left: 40, right: 40),
                                    
                                    labelColor: Colors.black,
                                    labelStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins"),
                                    unselectedLabelColor: Colors.grey,
                                    isScrollable: true,
                                    indicatorSize: TabBarIndicatorSize.label,
                                    tabs: [Tab(text: "Hardware Items"), Tab(text: "Workers")],
                                  ),
                          ],
                        ),
                      ),
                             
                        // // Container(
                        // //   child: Align(
                        // //     alignment: Alignment.centerLeft,
                            
                        // //   ),
                        // // ),
                        
                       
              
              ),
                body: TabBarView(  
                  //tabbarview
                    children: [
                      Container(
                        width: kPropWidth(context, 1),
                        height: kPropHeight(context, 1),
                        padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //search 
                                margin:EdgeInsets.all(20) ,
                                child: Container(
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
                                                    borderRadius: BorderRadius.circular(15),
                                                    borderSide: BorderSide.none
                                                    
                                                  ),
                                                  
                                                hintText: 'Search Category...',
                                                hintStyle: TextStyle(
                                                  
                                                  fontFamily: 'Poppins',
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
                                ),
                                    ),
                              Container(
                                //Categories
                                child: Column(
                                  children: [
                                      Container(
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                                            child: Text(
                                              "Categories",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.15),
                                            ),
                                          ),
                                          
                                            ]),
                                          ),         
                                      Container( 
                                        child: Column(
                                          children: [
                                            Container(
                                              //row1
                                              child: Row(
                                                children: [
                                                  Container(
                                                    //Cement
                                                    margin: EdgeInsets.fromLTRB(25, 10, 20, 15),
                                                        width: kPropWidth(context, 0.4),
                                                        height: kPropHeight(context, 0.08),
                                                        
                                                        // margin: EdgeInsets.only( right:20,top: 15),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          //  border: Border.all(width: 2, color: Colors.grey.shade200),
                                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors.grey.withOpacity(0.25),
                                                                spreadRadius: 10,
                                                                blurRadius: 7,
                                                                offset: Offset(2, 5), // changes position of shadow
                                                              ),
                                                              BoxShadow(
                                                                color: Colors.white.withOpacity(0.8),
                                                                spreadRadius: 10,
                                                                blurRadius: 7,
                                                                offset: Offset(-10, -10), // changes position of shadow
                                                              ),
                                                            ],
                                                        ),


                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context) =>cement()),
                                                          );
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          
                                                          primary: Colors.white,
                                                          shadowColor: Colors. transparent,
                                                          padding: EdgeInsets.symmetric(
                                                            vertical: 0.0, horizontal: 0.0),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: new BorderRadius.circular(20.0),
                                                            ),
                                                          ), child: null, 
                                                    ),
                                                  ),
                                                  Container(
                                                    //Bricks
                                                    margin: EdgeInsets.fromLTRB(12, 10, 22, 15),
                                                        width: kPropWidth(context, 0.4),
                                                        height: kPropHeight(context, 0.08),
                                                        
                                                        // margin: EdgeInsets.only( right:20,top: 15),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          //  border: Border.all(width: 2, color: Colors.grey.shade200),
                                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors.grey.withOpacity(0.25),
                                                                spreadRadius: 10,
                                                                blurRadius: 7,
                                                                offset: Offset(2, 5), // changes position of shadow
                                                              ),
                                                              BoxShadow(
                                                                color: Colors.white.withOpacity(0.8),
                                                                spreadRadius: 10,
                                                                blurRadius: 7,
                                                                offset: Offset(-10, -10), // changes position of shadow
                                                              ),
                                                            ],
                                                        ),


                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context) =>bricks()),
                                                          );
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          
                                                          primary: Colors.white,
                                                          shadowColor: Colors. transparent,
                                                          padding: EdgeInsets.symmetric(
                                                            vertical: 0.0, horizontal: 0.0),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: new BorderRadius.circular(20.0),
                                                            ),
                                                          ), child: null, 
                                                    ),
                                                  )
                                                
                                                ],
                                              ),
                                            ),
                                            Container(
                                              //row2
                                              child: Row(
                                                children: [
                                                  Container(
                                                    //steel
                                                    margin: EdgeInsets.fromLTRB(25, 15, 20, 20),
                                                        width: kPropWidth(context, 0.4),
                                                        height: kPropHeight(context, 0.08),
                                                        
                                                        // margin: EdgeInsets.only( right:20,top: 15),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          //  border: Border.all(width: 2, color: Colors.grey.shade200),
                                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors.grey.withOpacity(0.25),
                                                                spreadRadius: 10,
                                                                blurRadius: 7,
                                                                offset: Offset(2, 5), // changes position of shadow
                                                              ),
                                                              BoxShadow(
                                                                color: Colors.white.withOpacity(0.8),
                                                                spreadRadius: 10,
                                                                blurRadius: 7,
                                                                offset: Offset(-10, -10), // changes position of shadow
                                                              ),
                                                            ],
                                                        ),


                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context) =>steel()),
                                                          );
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          
                                                          primary: Colors.white,
                                                          shadowColor: Colors. transparent,
                                                          padding: EdgeInsets.symmetric(
                                                            vertical: 0.0, horizontal: 0.0),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: new BorderRadius.circular(20.0),
                                                            ),
                                                          ), child: null, 
                                                    ),
                                                  ),
                                                  Container(
                                                    //sand
                                                    margin: EdgeInsets.fromLTRB(12, 15, 22, 20),
                                                        width: kPropWidth(context, 0.4),
                                                        height: kPropHeight(context, 0.08),
                                                        
                                                        // margin: EdgeInsets.only( right:20,top: 15),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          //  border: Border.all(width: 2, color: Colors.grey.shade200),
                                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors.grey.withOpacity(0.25),
                                                                spreadRadius: 10,
                                                                blurRadius: 7,
                                                                offset: Offset(2, 5), // changes position of shadow
                                                              ),
                                                              BoxShadow(
                                                                color: Colors.white.withOpacity(0.8),
                                                                spreadRadius: 10,
                                                                blurRadius: 7,
                                                                offset: Offset(-10, -10), // changes position of shadow
                                                              ),
                                                            ],
                                                        ),


                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context) =>sand()),
                                                          );
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          
                                                          primary: Colors.white,
                                                          shadowColor: Colors. transparent,
                                                          padding: EdgeInsets.symmetric(
                                                            vertical: 0.0, horizontal: 0.0),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: new BorderRadius.circular(20.0),
                                                            ),
                                                          ), child: null, 
                                                    ),
                                                  )
                                                
                                                ],
                                              ),
                                            )
                                          
                                          ],),
                                      ),
                                            ],
                                          ),
                                        ),
                              Container(
                                //most pop
                                child: Column(
                                  children: [
                                      Container(
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                                            child: Text(
                                              "Most Popular Items",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.15),
                                            ),
                                          ),
                                         
                                            ]),
                                          ),         
                                      Container( 
                                        child: ImageCauserol(
                                            context: context,
                                              imgs: data['images'],
                                            ),
                                      ),
                                            ],
                                          ),
                                        ),
                              Container(
                                //this week best offers
                                child: Column(
                                  children: [
                                      Container(
                                        child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                                              child: Text(
                                                  "This Week best offers",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                      height: 1.15),
                                                ),
                                              ),
                                         
                                        ]),
                                  ),
                                
                                      Container(
                                        
                                        child: ImageCauserol_a(
                                            context: context,
                                              imgs: data['images'],
                                            ),
                                      ),
                                      ],
                                ),
                              ),
                              
                              
                              ],
                          ),
                        ),
                            
                      ),
                      Container(
                        //workers
                        width: kPropWidth(context, 1),
                        height: kPropHeight(context, 1),
                        padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                  child: Container(
                                  margin:EdgeInsets.all(20) ,
                                  //search content
                                  padding: EdgeInsets.only(right: 5,left:5),
                                  child: Row(
                                    children: [
                                    
                                    Flexible(
                                      // TEXTFIELD
                                      flex: 1,
                                      child: TextField(
                                        style: TextStyle( height: 0.5 ),
                                        cursorColor: Colors.grey,
                                          decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(right: 15,left: 18),
                                          fillColor: Colors.white,
                                          filled: true,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                              borderSide: BorderSide.none
                                              
                                            ),
                                            
                                          hintText: 'Search Category...',
                                          hintStyle: TextStyle(
                                            
                                            fontFamily: 'Poppins',
                                            color: Colors.grey,
                                            fontSize: 16
                                          ),
                                        ),
                                  ),
                                ),
                                    Container(
                                      //search button
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
                                ),
                                ),
                              Container(
                                //constructor
                                        child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            //constructor carousal name
                                              Container(
                                                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                                                child: Text(
                                                 "Contractors",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.15),
                                            ),
                                          ),
                                              Container(
                                                padding: EdgeInsets.only(right: 30),
                                                child: Text(
                                                  "See all",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey,
                                                      height: 1),
                                                ),
                                              ),
                                            ]),
                                           ),
                              Container(
                                      //constructor car
                                      child: ImageCauserol(
                                        
                                          context: context,
                                            imgs: data['images'],
                                          ),
                                    ),       
                              Container(
                              //mason 
                                child: Column(
                                  children: [
                                      Container(
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                            Container(
                                              //mason carousals name
                                              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                                              child: Text(
                                                "Masons",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    height: 1.15),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(right: 30),
                                              child: Text(
                                                "See all",
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey,
                                                    height: 1),
                                              ),
                                            ),
                                          ]),
                                        ),
                          
                                  Container(
                                    //masons carousals
                                    child: ImageCauserol(
                                      
                                        context: context,
                                          imgs: data['images'],
                                        ),
                                  ),
                                ],
                              ),
                            ),
                              Container(
                                //elec
                                  child: Column(
                                    children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                //Electrians carousals name
                                              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                                              child: Text(
                                                "Electricians",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    height: 1.15),
                                              ),
                                            ),
                                              Container(
                                                
                                                padding: EdgeInsets.only(right: 30),
                                                child: Text(
                                                  "See all",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey,
                                                      height: 1),
                                                ),
                                              ),
                                              ]),
                                        ),
                          
                                        Container(
                                          //electrians carousals
                                          child: ImageCauserol(
                                            
                                              context: context,
                                                imgs: data['images'],
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                              Container(
                                //plumber
                                child: Column(
                                  children: [
                                    Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                          Container(
                                            //plumber carousals name
                                                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                                                child: Text(
                                                  "Plumbers",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      height: 1.15),
                                                ),
                                              ),
                                          Container(
                                            padding: EdgeInsets.only(right: 30),
                                            child: Text(
                                              "See all",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  height: 1),
                                            ),
                                          ),
                                          ]),
                                    ),
                          
                                    Container(
                                      //elec carousals
                                      child: ImageCauserol(
                                        
                                          context: context,
                                            imgs: data['images'],
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            
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