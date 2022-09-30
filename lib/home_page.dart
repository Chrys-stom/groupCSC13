import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:weed_detector/body.dart';
import 'package:weed_detector/sign_in_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return Body();
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("Sadik is too Sturbon"),
              );
            } else {
              return const SignIn();
            }
          },
        ),
      );
}
