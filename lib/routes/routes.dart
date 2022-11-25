import 'package:flutter/material.dart';
import 'package:we_live_chat_app/authentication/authenticating.dart';
import 'package:we_live_chat_app/views/bookings.dart';
import 'package:we_live_chat_app/views/chat.dart';
import 'package:we_live_chat_app/views/home_view.dart';
import 'package:we_live_chat_app/views/info_splash.dart';
import 'package:we_live_chat_app/views/profile_user.dart';
import 'package:we_live_chat_app/views/user_home.dart';

class RouteManager {
  static const String infoScreen = '/';
  static const String authScreen = 'authScreen';
  static const String userHome = 'userHome';
  static const String homeChat = 'homeChat';
  static const String userProfile = 'userProfile';
  static const String bookings = 'bookings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case infoScreen:
        return MaterialPageRoute(
          builder: (context) => InfoScreen(),
        );

      case authScreen:
        return MaterialPageRoute(
          builder: (context) => Authenticate(),
        );

      case userHome:
        return MaterialPageRoute(
          builder: (context) => UserHome(),
        );

      case homeChat:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      case userProfile:
        return MaterialPageRoute(
          builder: (context) => UserProfile(),
        );

      case bookings:
        return MaterialPageRoute(
          builder: (context) => Bookings(),
        );

      default:
        throw FormatException('Route not found! Check routes again!');
    }
  }
}
