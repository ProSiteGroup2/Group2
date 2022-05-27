import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hardware_new/common/size.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({ Key? key }) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: AppBar(
        
         backgroundColor: Color(0xE5E5E5),
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {
                print("cart");
              },
            ),
          )
        ],
        
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                 width: kPropWidth(context, 1) - 20,
                  height: kPropHeight(context, 0.40) - 32,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(100)),
                    boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.07),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(1, 4), // changes position of shadow
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(-10, -10), // changes position of shadow
                            ),
                                    ],
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/imgs/logo.png"),
                      fit: BoxFit.cover,     
                      ),
                    ),
              ),
              Container(
                 width: kPropWidth(context, 1) - 70,
                  height: kPropHeight(context, 0.42) - 252,
                  
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Safety Goggles",style: TextStyle(fontFamily: "poppins",fontSize: 22,fontWeight: FontWeight.w700,height: 2)),
                    Container(
                      
                      width: kPropWidth(context, 0.22) ,
                      height: kPropHeight(context, 0.035),
                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.blue[700]!.withOpacity(0.4),
                                        ),
                                child: Text("Rs.1000",style: TextStyle(
                                  fontFamily: "poppins",
                                  fontWeight:FontWeight.w500,
                                  fontSize:19),
                                textAlign: TextAlign.center,
                    ),
                    )
                  ],
                ),
                
              ),
              Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: TabBar(
                        labelPadding: const EdgeInsets.only(left: 16, right: 16),
                        controller: _tabController,
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppins"),
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [Tab(text: "Details"), Tab(text: "Specifications"), Tab(text: "Reviews"), Tab(text: "About Seller")],
                      ),
                    ),
                  ),
               Container(
                    height: 200,
                    width: double.maxFinite,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                              Container(
                                margin: EdgeInsets.only( top: 15),
                                child: Column(
                                  children: [
                                    Container(
                                       width: kPropWidth(context, 1) - 32,
                                        //height: kPropHeight(context, 0.4) - 32,
                                        margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi maximus hendrerit odio, eu iaculis orci rutrum et. Vestibulum ex orci, semper lobortis lacus sit amet, vehicula porttitor felis.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontFamily: "poppins",
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.5,
                                            height: 1.15),
                                      ),
                              ),
                                    Container(
                                      margin: EdgeInsets.only(left: 22,right: 15),
                                      alignment: Alignment.topLeft,
                                      child: new InkWell(
                                      
                                          child: new Text('See full description . . .',style: TextStyle(fontFamily: "poppins",color: Colors.blue[800],),),
                                          onTap: () => launch('https://www.youtube.com/')
                                      ),)
                              ],
                          ),
                              
                        ),
                              Container(
                                margin: EdgeInsets.only( top: 15),
                                child: Column(
                                  children: [
                                    Container(
                                       width: kPropWidth(context, 1) - 32,
                                        //height: kPropHeight(context, 0.4) - 32,
                                        margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                        
                                        children:  [
                                          
                                              Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Text(
                                                "Condition\t -",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontFamily: "poppins",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    wordSpacing: 0.5,
                                                    letterSpacing: 0.8,
                                                    height: 1.15),
                                            ),
                                              ),
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Text(
                                                "Quantity\t -",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontFamily: "poppins",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    wordSpacing: 0.5,
                                                    letterSpacing: 0.8,
                                                    height: 1.15),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Text(
                                                "Model\t -",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontFamily: "poppins",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    wordSpacing: 0.5,
                                                    letterSpacing: 0.8,
                                                    height: 1.15),
                                              ),
                                            ),

                                        ],
                                        
                                      ),
                              ),
                                    Container(
                                      margin: EdgeInsets.only(left: 22,right: 15),
                                      alignment: Alignment.topLeft,
                                      child: new InkWell(
                                      
                                          child: new Text('For more . . .',style: TextStyle(fontFamily: "poppins",color: Colors.blue[800],),),
                                          onTap: () => launch('https://www.youtube.com/')
                                      ),)
                              ],
                          ),
                              
                        ),
                              Container(
                          margin: EdgeInsets.only(left: 30, top: 18),
                          child: Column(
                            children: [
                              Container(
                                width: kPropWidth(context, 1) - 32,
                                height: kPropHeight(context, 0.1) - 32,
                                child: Text(
                                  "Reviews",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      height: 1.15),
                                ),
                              ),
                              ],
                          ),
                              
                        ),
                              Container(
                          margin: EdgeInsets.only(left: 30, top: 18),
                          child: Column(
                            children: [
                              Container(
                                width: kPropWidth(context, 1) - 32,
                                height: kPropHeight(context, 0.1) - 32,
                                child: Text(
                                  "About",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      height: 1.15),
                                ),
                              ),
                              ],
                          ),
                              
                        ),
                              ],
                    ),
                  )
                
            ],
          ),
        ),
      ),
      
      
    );
  }
}