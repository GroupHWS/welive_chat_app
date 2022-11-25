import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:we_live_chat_app/common/constant.dart';
import 'package:we_live_chat_app/routes/routes.dart';
import 'package:we_live_chat_app/utils/info1.dart';
import 'package:we_live_chat_app/utils/info2.dart';
import 'package:we_live_chat_app/utils/info3.dart';

class InfoScreen extends StatefulWidget {
  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Info1(),
              Info2(),
              Info3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text(
                      'Skip',
                      style: GoogleFonts.lobster(textStyle: style14Blue),
                    ),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  GestureDetector(
                      onTap: () =>
                          {Navigator.popAndPushNamed(context, 'userHome')},
                      child: Text(
                        'Continue',
                        style: GoogleFonts.lobster(textStyle: style14Blue),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
