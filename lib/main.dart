import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/registration/log_in_screen.dart';
import 'screens/registration/sign_in_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
      MyApp());
}
class MyApp extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  void submit(
      String email, String password,BuildContext context, bool islogin) async {

    try {UserCredential userCredential = await auth
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(submit),
    );
  }
}
