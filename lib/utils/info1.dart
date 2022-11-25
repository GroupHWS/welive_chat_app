import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:we_live_chat_app/common/constant.dart';

class Info1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome To WeLIVE',
            style: GoogleFonts.lobster(textStyle: style14Blue),
          ),
          Lottie.network(
              'https://assets1.lottiefiles.com/packages/lf20_3vbOcw.json'),
        ],
      ),
    );
  }
}
