import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_live_chat_app/common/constant.dart';
import 'package:we_live_chat_app/utils/profcard_util.dart';
import 'package:we_live_chat_app/views/chat.dart';
import 'package:we_live_chat_app/widgets/home_widget.dart';

class UserHome extends StatefulWidget {
  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF873bcc),
        automaticallyImplyLeading: false,
        title: const Text(
          'WeLive Mental Health',
          style: TextStyle(fontSize: 30),
        ),
        leading: IconButton(
          /* 214077489 - back arrow fuctionality */
          onPressed: () {
            SystemNavigator.pop();
          },
          icon: const Icon(
            Icons.close,
            size: 22,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              //
              //
              //
              //
            },
            icon: const Icon(Icons.settings_suggest_outlined, size: 25),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 13),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF701ebd),
                      Color(0xFF873bcc),
                      Color(0xFFfe4a97),
                      Color(0xFFe17763),
                      Color(0xFF68998c),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(Icons.person),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'HELLO,',
                              style: GoogleFonts.playfairDisplay(
                                  textStyle: style14Blue, color: Colors.white),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Username here',
                              style: GoogleFonts.lobster(
                                  textStyle: style14Blue, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Container(
                      margin: const EdgeInsets.only(left: 23, right: 20),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          // Animation(),
                          //
                          Expanded(
                            child: Container(
                              height: 100,
                              width: 100,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/Picture1.jpg'),
                                radius: 22,
                              ),
                            ),
                          ),
                          const SizedBox(width: 25),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'How Are You Today?',
                                  style: GoogleFonts.playfairDisplay(
                                      textStyle: style14Blue),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Head To Your Journal',
                                  style: GoogleFonts.playfairDisplay(
                                      textStyle: style14Blue),
                                ),
                                const SizedBox(height: 8),
                                InkWell(
                                  onTap: () {
                                    //
                                    //
                                    //
                                    //
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Get Started',
                                      style: GoogleFonts.playfairDisplay(
                                          textStyle: style14Blue),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      margin: const EdgeInsets.only(left: 23, right: 20),
                      padding: const EdgeInsets.only(
                          left: 30, right: 6, top: 6, bottom: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'How can we help you?',
                          hintStyle:
                              GoogleFonts.lobster(textStyle: style14Blue),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 70,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                onTap: () => {
                                  //
                                  //

                                  //
                                  //
                                },
                                child: HomeWidget(
                                  home: 'BOOKINGS',
                                  iconPlaceholder: Icons.add_alert_rounded,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  //
                                  //
                                  //
                                  //
                                },
                                child: HomeWidget(
                                  home: 'PROFESSIONALS',
                                  iconPlaceholder: Icons.person_add_alt_sharp,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  //
                                  //
                                  //
                                  //
                                },
                                child: HomeWidget(
                                  home: 'Find-A-Friend',
                                  iconPlaceholder: Icons.manage_search_sharp,
                                ),
                              ),
                              InkWell(
                                onTap: () => {
                                  //
                                  Navigator.pushNamed(context, 'homeChat')
                                  //
                                },
                                child: HomeWidget(
                                  home: 'CHAT',
                                  iconPlaceholder: Icons.chat_bubble,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Professionals:',
                            style: GoogleFonts.playfairDisplay(
                                textStyle: style14Blue),
                          ),
                          Text(
                            'See all',
                            style: GoogleFonts.playfairDisplay(
                                textStyle: style14Blue),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 165,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              ProfCard(
                                profImage: 'assets/images/Picture1.jpg',
                                ratings: '4.5',
                                profName: 'Dr Timothy Thomas',
                                profType: 'Psychologist',
                              ),
                              ProfCard(
                                profImage: 'assets/images/Picture1.jpg',
                                ratings: '4.0',
                                profName: 'Dr Nthabiseng Majoro',
                                profType: 'Psychiatrist',
                              ),
                              ProfCard(
                                profImage: 'assets/images/Picture1.jpg',
                                ratings: '4.3',
                                profName: 'Dr Ivan Muller',
                                profType: 'Psychologist',
                              ),
                              ProfCard(
                                profImage: 'assets/images/Picture1.jpg',
                                ratings: '4.2',
                                profName: 'Dr Isaac Mofokeng',
                                profType: 'Therapist',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
