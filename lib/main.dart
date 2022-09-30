import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weed_detector/google_sign_in.dart';
import 'package:weed_detector/home_page.dart';
import 'package:weed_detector/logged_in.dart';
import 'package:weed_detector/sign_in_screen.dart';

import 'package:weed_detector/splash_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: const MaterialApp(
          title: 'WEED DETECTOR',
          home: Splash(),
          debugShowCheckedModeBanner: false,
        ),
      );
}
