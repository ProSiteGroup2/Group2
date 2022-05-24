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
            backgroundImage: AssetImage('assets/images/logo.png'),
          ),
        ),
      ),
      body: SafeArea(  
        
          child: SingleChildScrollView(
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
                           
                            Container(
                              width: 250,
                              height: 100,
                              margin: EdgeInsets.only( right:20,top: 20),
                              decoration: BoxDecoration(
                                 border: Border.all(width: 2, color: Colors.grey.shade200),
                                 borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.05),
                                      spreadRadius: 10,
                                      blurRadius: 7,
                                      offset: Offset(5, 4), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: Colors.white.withOpacity(0.5),
                                      spreadRadius: 10,
                                      blurRadius: 7,
                                      offset: Offset(-10, -10), // changes position of shadow
                                    ),
                                  ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 110,
                                    height: 100,
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/cement.png"),
                                      fit: BoxFit.cover,     
                                      ),
                                    ),
                                  ),
                                  Container(
                                     margin: EdgeInsets.only(right:15,top: 20),
                                     width: 100,
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text("Cement",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontFamily: "poppins",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            height: 1.15),),
                                        ),
                                        Container(
                                          width: 80,
                                          margin: EdgeInsets.all(7),
                                          padding: EdgeInsets.only(left:2.0,right: 2),
                                          child: Row(
                                            children: [
                                              Container(child: Icon(Icons.location_on,size: 13.0,)),
                                              Container(width:60,padding: EdgeInsets.only(left:3.0,right: 2),child: Text("Perera Hardware,\n Maharagama",style: TextStyle(fontSize: 8),maxLines:2,overflow: TextOverflow.ellipsis,softWrap: false,))
                                            ],
                                          ),
                                        )

                                        
                                      ],
                                      
                                    ),
                                  )
                                ],
                              ),
                            )
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

  



