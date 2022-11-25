import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:we_live_chat_app/common/constant.dart';

class Info3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Chat with qualified Health Providers',
            style: GoogleFonts.lobster(textStyle: style14Blue),
          ),
          Lottie.network(
              'https://assets8.lottiefiles.com/packages/lf20_1ef7g2lw.json'),
        ],
      ),
    );
  }
}
