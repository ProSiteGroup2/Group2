import 'package:flutter/material.dart';

class MyHomePage3 extends StatefulWidget {
  const MyHomePage3({Key? key}) : super(key: key);

  @override
  _MyHomePage3State createState() => _MyHomePage3State();
}

class _MyHomePage3State extends State<MyHomePage3> {
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
        title: Text(
          'Profile Settings',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),

        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.all(Radius.circular(30.0))
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Hardware Name:',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  height: 50.0,
                                  width: 1000.0,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.blueGrey[50],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey,
                                        blurRadius: 10.0,
                                        offset: Offset(10.0,10.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                        'Home Hardware'
                                    ),
                                  ),
                                ),

                                SizedBox(height: 40.0),

                                Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Email:',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  height: 50.0,
                                  width: 1000.0,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.blueGrey[50],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey,
                                        blurRadius: 10.0,
                                        offset: Offset(10.0,10.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                        'homehardware@gmail.com'
                                    ),
                                  ),
                                ),


                                SizedBox(height: 40.0),


                                Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Contact Number:',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  height: 50.0,
                                  width: 1000.0,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.blueGrey[50],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey,
                                        blurRadius: 10.0,
                                        offset: Offset(10.0,10.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                        '07711223355'
                                    ),
                                  ),
                                ),


                                SizedBox(height: 40.0),


                                Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Hardware Address:',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  height: 50.0,
                                  width: 1000.0,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.blueGrey[50],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey,
                                        blurRadius: 10.0,
                                        offset: Offset(10.0,10.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                        'A 63/5 Wawaladeniya , Kegalle'
                                    ),
                                  ),
                                ),


                                SizedBox(height: 40.0),


                                Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'City:',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  height: 50.0,
                                  width: 1000.0,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.blueGrey[50],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey,
                                        blurRadius: 10.0,
                                        offset: Offset(10.0,10.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                        'Kegalle'
                                    ),
                                  ),
                                ),


                                SizedBox(height: 40.0),


                                Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Distric:',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  height: 50.0,
                                  width: 1000.0,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.blueGrey[50],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey,
                                        blurRadius: 10.0,
                                        offset: Offset(10.0,10.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                        'Kegalle'
                                    ),
                                  ),
                                ),


                                SizedBox(height: 40.0),


                                Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Registation Number:',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  height: 50.0,
                                  width: 1000.0,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.blueGrey[50],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey,
                                        blurRadius: 10.0,
                                        offset: Offset(10.0,10.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                        'NS3502'
                                    ),
                                  ),
                                ),


                                SizedBox(height: 40.0),


                                Container(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Owaner Name:',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  height: 50.0,
                                  width: 1000.0,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.blueGrey[50],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey,
                                        blurRadius: 10.0,
                                        offset: Offset(10.0,10.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                        'Nadun Nethsara'
                                    ),
                                  ),
                                ),


                                SizedBox(height: 40.0),

                                Container(
                                  margin: EdgeInsets.fromLTRB(100.0, 0.0, 60.0, 30.0),
                                  child:ElevatedButton.icon(

                                    //label: Icon(Icons.lock),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.grey[700],
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadiusDirectional.circular(16.0))
                                    ),
                                    onPressed: () {  },
                                    icon: Text('Changed Password',style:TextStyle(color: Colors.white),),
                                    label: Icon(Icons.lock),
                                  ),
                                )






                              ],
                            ),
                          ),
                        ),

                        Positioned(
                            child: Center(

                            ),
                        )
                      ],
                    )
                  ],
                ),
      ),
    );
  }
}
