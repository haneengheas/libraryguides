import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:libraryguides/constant/styles.dart';
import 'package:libraryguides/screens/registration/password_recovery.dart';
import 'package:libraryguides/screens/registration/sign_in_screen.dart';
import 'package:libraryguides/screens/user/navigation.dart';
import 'package:libraryguides/widgets/button/flatbuton.dart';
import 'package:libraryguides/widgets/button/textbuton.dart';
import 'package:libraryguides/widgets/input_field_regeist.dart';

class LogInScreen extends StatefulWidget {
  final void Function (String email, String password, BuildContext context, bool isLogin) submitAuth;

  LogInScreen(this.submitAuth);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  // final auth = FirebaseAuth.instance;
  //
  // void submit(
  //     String email, String password,BuildContext context, bool islogin) async {
  //
  //   try {UserCredential userCredential = await auth
  //         .createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }




  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  validateForm() {
    print('aa');
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      widget.submitAuth(email.trim(),password.trim(),context, isLogin);

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NavigationScreen()));
    } else {
      return;
    }
  }

  // final _auth = FirebaseAuth.instance;
  // bool modal_progress_hud = false;
  String email = '';
  String password = '';
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
          SizedBox(height: 35),
      // Logo(
      //   height: 140,
      // ),
      SizedBox(
        height: 30,
      ),
      Center(
          child: Text(
            '?????????? ????????????',
            style: labelStyle,
          )),
      SizedBox(
        height: 20,
        //d
      ),
      Form(
          key: _formKey,
          child: Column(
            children: [
              InputFieldRegist(
                hint: '???????? ???????????? ????????????????????',
                label: '???????????? ????????????????????',
                scure: false,
                validator: (value) {
                  email = value;
                  if (value!.isEmpty) {
                    return '?????????? ?????????? ???????????? ???????????????????? ???????? ????????';
                  } else if (!value.toString().contains('@')) {
                    return '?????? ???? ?????????? ???????????? ???????????????????? ?????? @';
                  }
                },
                onSaved: (value) {
                  email = value!;
                },
              ),
              InputFieldRegist(
                hint: '???????? ???????? ????????????',
                label: '???????? ????????????',
                scure: true,
                validator: (value) {
                  password = value;
                  if (value!.isEmpty) {
                    return '?????????? ?????????? ???????? ???????????? ???????? ????????';
                  } else if (value.length < 5) {
                    return '?????? ???? ???????? ???????? ???????????? ?????????? ?????? ?????????? ???? ?????? ??????????';
                  }
                },
                onSaved: (value) {
                  password = value!;
                },
              ),
            ],
          )),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Textbuton('???? ???????? ???????? ????????????', onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasswordRecovery()));
            })
          ],
        ),
      ),
      SizedBox(
        height: sizeFromHeight(context, 20),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Textbuton(
            '?????????? ????????',
            onTap: () {
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => SignInScreen(submit)));
            },
          ),
          SizedBox(
            height: sizeFromHeight(context, 12),
          ),
          Text(
            '?????? ???????? ???????? ??',
            style: hintStyle,
          ),
        ],
      ),
      Buton("?????????? ????????", onTap: () {
        validateForm();
      }),
        ],
      ),
    );
  }
}
