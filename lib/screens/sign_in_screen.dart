import 'package:flutter/material.dart';
import 'package:flutterflies_learning/screens/common/transparent_app_bar_page.dart';
import 'package:flutterflies_learning/screens/input/taskly_text_input.dart';
import 'package:flutterflies_learning/screens/localizations/sign_in_screen_localizations.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final SignInScreenLocalizations _localizations = SignInScreenLocalizations();
  @override
  Widget build(BuildContext context) {
    return TransparentAppBarPage(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 35,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _localizations.signYouInHeadingText(),
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              _localizations.welcomeBackSignInText(),
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF171717).withOpacity(.6),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TasklyTextInput(
              label: _localizations.emailText(),
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 24, 0),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TasklyTextInput(
              label: _localizations.passwordText(),
              keyboardType: TextInputType.visiblePassword,
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 24, 0),
                child: Icon(
                  Icons.lock_open,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 0, 0),
                child: Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),

            /// This is the same reusable button from the Welcome Screen
            FlatButton(
              color: Colors.transparent,
              child: Container(
                width: 300,
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xFF2662BC),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    _localizations.signInButtonText(),
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/signIn');
              },
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: _localizations.userDoesNotHaveAccountText(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF171717).withOpacity(.6),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' ${_localizations.signUpText()}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
