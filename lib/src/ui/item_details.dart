import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hardware_new/common/size.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({ Key? key }) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(
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
                    
                    width: kPropWidth(context, 0.3) ,
                    height: kPropHeight(context, 0.035),
                    decoration: BoxDecoration(
                      
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.blue[700]!.withOpacity(0.4),
                                      
                                      ),
                              child: Text("Rs.1000",style: TextStyle(fontFamily: "poppins",fontWeight:FontWeight.w500,fontSize:18),
                              textAlign: TextAlign.center,
                  ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      
      
    );
  }
}