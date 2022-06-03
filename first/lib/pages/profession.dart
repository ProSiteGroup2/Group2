import 'package:flutter/material.dart';

class Profession extends StatefulWidget {
  const Profession({Key? key}) : super(key: key);

  @override
  State<Profession> createState() => _ProfessionState();
}

class _ProfessionState extends State<Profession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/select_1.png"),
                fit: BoxFit.fill,
                alignment: Alignment.center),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                  child: Text(
                    "Choose,",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5D5D5D)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "Profession,",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF5D5D5D)),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Select()),
                        // );
                      },
                      child: Text(
                        'Carpenter',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'poppins',
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.black87,
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 68.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Select()),
                        // );
                      },
                      child: Text(
                        'Mason',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'poppins',
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.black87,
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 87.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Select()),
                        // );
                      },
                      child: Text(
                        'Electrician',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'poppins',
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.black87,
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 66.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Select()),
                        // );
                      },
                      child: Text(
                        'Architecturer',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'poppins',
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.black87,
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 52.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Select()),
                        // );
                      },
                      child: Text(
                        'Plumber',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'poppins',
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.black87,
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 78.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Select()),
                        // );
                      },
                      child: Text(
                        'Painter',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'poppins',
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shadowColor: Colors.black87,
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 85.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
