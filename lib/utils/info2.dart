import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:we_live_chat_app/common/constant.dart';

class Info2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sit Back and Relax',
            style: GoogleFonts.lobster(textStyle: style14Blue),
          ),
          Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_DACRJe6U8R.json'),
        ],
      ),
    );
  }
}
