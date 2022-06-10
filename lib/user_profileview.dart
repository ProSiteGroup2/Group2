import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  double rating =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(
        onPressed: () {  },
        icon:Icon(Icons.arrow_back_ios_new_sharp),
        color: Colors.blue[900],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 110.0, 0.0, 0.0),
                      //width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(Radius.circular(42.0))
                      ),

                    child: Column(
                      children: [
                        SizedBox(height: 70.0,
                        ),
                        Center(
                          child: Text(
                            'Aaron Graham',
                            style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                          ),
                        ),

                        Center(
                          child: Text(
                            'mason',
                            style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                          ),
                        ),

                        Container(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              SizedBox(height: 20,),

                              Row(
                                children: [
                                  Expanded(flex:1 , child: Image.asset('assets/aaa.jpg',height: 100.0,)),
                                  Expanded(flex:1, child:Image.asset('assets/bbb.jpg',height: 100.0,)),
                                  Expanded(flex:1, child:Image.asset('assets/ccc.jpeg',height: 100.0,)),
                                ],
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: [
                                  Expanded(flex:1 , child: Image.asset('assets/ddd.jpg',height: 80.0,)),
                                  Expanded(flex:1, child:Image.asset('assets/eee.jpg',height: 80.0,)),
                                  Expanded(flex:1, child:Image.asset('assets/ccc.jpeg',height: 80.0,)),
                                ],
                              ),
                            ],
                          ),


                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14.0)),
                            color: Colors.blueGrey[50],

                          ),

                          child:Column(

                            children: [
                              Row(

                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(width: 5.0,),
                                  Text('From Gampaha', style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
                                ],
                              ),

                              SizedBox(height: 10.0,),

                              Row(

                                children: [
                                  Icon(Icons.home_filled),
                                  SizedBox(width: 5.0,),
                                  Text('B 70/5A,Edurapotha,Kegalle', style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
                                ],
                              ),

                              SizedBox(height: 10.0,),

                              Row(

                                children: [
                                  Icon(Icons.email_rounded),
                                  SizedBox(width: 5.0,),
                                  Text('abcd@gmail.com', style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
                                ],
                              ),

                              SizedBox(height: 10.0,),

                              Row(

                                children: [
                                  Icon(Icons.phone_in_talk_outlined),
                                  SizedBox(width: 5.0,),
                                  Text('0772222999', style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
                                ],
                              ),

                              SizedBox(height: 10.0,),

                              Row(

                                children: [
                                  Icon(Icons.work_sharp),
                                  SizedBox(width: 5.0,),
                                  Text('Only with Experience', style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
                                ],
                              ),

                              SizedBox(height: 10.0,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(

                                    //label: Icon(Icons.lock),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadiusDirectional.circular(16.0))
                                    ),
                                    onPressed: () {  },
                                    icon: Text('Chat',style:TextStyle(color: Colors.white),),
                                    label: Icon(Icons.chat),
                                  ),
                                  SizedBox(width: 5.0,),
                                  ElevatedButton(

                                    //label: Icon(Icons.lock),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadiusDirectional.circular(16.0))
                                    ),
                                    onPressed: () {  },
                                    child: Text('Give/View Feedback',style:TextStyle(color: Colors.white),),
                                    
                                  ),
                                ],
                              ),
                            ],
                          )
                          ),

                        Center(
                          child: Text(
                            'Rate Him',
                            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                          ),
                        ),

                        Center(
                          child: RatingBar.builder(
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemCount: 5,
                            itemSize: 30,
                            updateOnDrag: true,
                            itemBuilder: (BuildContext context, _) {
                              return Icon(Icons.star,color: Colors.amber,);
                              },
                            onRatingUpdate: (rating) {
                              setState(() {
                                this.rating =rating;
                              });
                            },

                          ),
                        ),

                        SizedBox(height: 15.0,)

                      ],
                    ),
                    ),


                  Positioned(
                    child: Container(
                      child: Center(
                        child:
                            CircleAvatar(
                              radius:80.0,
                              backgroundImage:AssetImage('assets/167621352-confident-asian-male-engineer-worker-standing-arm-crossed-happy-smile-for-enjoy-working-in-factory.jpg',

                              ),

                            ),


                        ),
                      ),
                    ),

                ],
              )
            ],
          ),
        ) ,
    );
  }
}


