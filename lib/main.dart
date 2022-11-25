import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:we_live_chat_app/authentication/authenticating.dart';
import 'package:we_live_chat_app/routes/routes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteManager.infoScreen,
        onGenerateRoute: RouteManager.generateRoute);
  }
}
