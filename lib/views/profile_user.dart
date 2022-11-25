import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_live_chat_app/common/constant.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                  color: Color.fromARGB(255, 78, 6, 247).withOpacity(0.8)),
              clipper: getClipper(),
            ),
            Positioned(
                width: MediaQuery.of(context).size.width,
                top: MediaQuery.of(context).size.height / 13,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 250.0,
                        height: 250.0,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSm1IwsPZDVXMagZrFcX2o8neNG5SoTD1Gxnx1A_ApzHw3TBcuP'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(125.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ])),
                    SizedBox(height: 60.0),
                    Text(
                      'Kylian Mbappe',
                      style:
                          GoogleFonts.playfairDisplay(textStyle: style14Blue),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'User',
                      style:
                          GoogleFonts.playfairDisplay(textStyle: style14Blue),
                    ),
                    SizedBox(height: 25.0),
                    Container(
                        height: 30.0,
                        width: 125.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.cyanAccent,
                          color: Colors.cyan,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'Edit Name',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'MontSerrat'),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 25.0),
                    Container(
                        height: 30.0,
                        width: 125.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.cyanAccent,
                          color: Colors.cyan,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'Reset Password',
                                style: GoogleFonts.playfairDisplay(
                                    textStyle: style14Blue),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 25.0),
                    Container(
                        height: 30.0,
                        width: 125.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.cyanAccent,
                          color: Colors.cyan,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'Log Out',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'MontSerrat'),
                              ),
                            ),
                          ),
                        ))
                  ],
                ))
          ],
        ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 2.4);
    path.lineTo(size.width + 165, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
