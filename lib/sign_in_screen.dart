import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:weed_detector/google_sign_in.dart';
//import 'package:weed_detector/logged_in.dart';

class SignIn extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const SignIn() : super();

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isRememberMe = false;

  //initialising firbase app
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 7, 19, 8),
              ),
              child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Positioned(
                        top: 10,
                        child: Positioned(
                          bottom: 50,
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/weed.jpeg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(95.0)),
                              border: Border.all(
                                width: 5.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '\tHey there,\nWelcome to',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'WEED MASTER',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        icon: const FaIcon(FontAwesomeIcons.google,
                            color: Colors.green),
                        label: const Text('Sign Up with google'),
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      /* RichText(
              text: const TextSpan(text: 'Already have Account? \t', children: [
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                )
              ]),
            )*/
                    ],
                  )),
            ),
          ],
        ),
      );
}
    /*const FlutterLogo(size: 120),
            const Spacer(),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Hey there,\nWelcome back',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Login to your Account to continue',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Spacer(),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    minimumSize: const Size(double.infinity, 50)),
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.green,
                ),
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.googleLogin();
                },
                label: const Text('Sign In with google'))*/
  

