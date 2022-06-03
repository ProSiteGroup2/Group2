import 'package:first/pages/reguser.dart';
import 'package:flutter/material.dart';

class Loginas_cons extends StatefulWidget {
  const Loginas_cons({Key? key}) : super(key: key);

  @override
  State<Loginas_cons> createState() => _Loginas_consState();
}

class _Loginas_consState extends State<Loginas_cons> {
  @override
  final cons_emailController = TextEditingController();
  final cons_passwordController = TextEditingController();
  late bool _passwordVisible;
  void initState() {
    _passwordVisible = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/User Login.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25.0, 10.0, 0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 40.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF5D5D5D)),
                        //textAlign: TextAlign.right,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: Text(
                        "as Consumer",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF5D5D5D)),
                        //textAlign: TextAlign.right,
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 5,
                                blurRadius: 5,
                                offset: const Offset(10, 12),
                              ),
                            ],
                          ),
                          // color: Colors.transparent,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              fillColor: Colors.white,
                              filled: true,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintText: 'Enter Email Address',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              prefixIcon:
                                  const Icon(Icons.mail, color: Colors.grey),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Email Address',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 5,
                                blurRadius: 5,
                                offset: const Offset(10, 12),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: cons_passwordController,
                            obscureText: !_passwordVisible,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              fillColor: Colors.white,
                              filled: true,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintText: 'Enter Password',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                              onPressed: () {
                                //TODO FORGOT PASSWORD SCREEN GOES HERE
                              },
                              child: Text(
                                'Forgot Password?',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFF5D5D5D),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text('Don\'t have an acoount?'),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegUser()),
                              );
                            },
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blueAccent,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: MediaQuery.of(context).size.height * 0.35,
                //   child: Stack(
                //     children: [
                //       Positioned(
                //         bottom: -100,
                //         left: 0,
                //         child: Container(
                //           width: MediaQuery.of(context).size.width,
                //           height: MediaQuery.of(context).size.height * 0.5,
                //           child: Image.asset(
                //             "assets/user_pic.jpg",
                //             fit: BoxFit.fitWidth,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
