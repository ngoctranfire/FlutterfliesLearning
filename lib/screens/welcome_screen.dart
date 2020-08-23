import 'package:flutter/material.dart';
import 'package:flutterflies_learning/screens/common/transparent_app_bar_page.dart';
import 'package:flutterflies_learning/screens/localizations/welcome_screen_localizations.dart';

class WelcomeScreen extends StatelessWidget {
  final WelcomeScreenLocalizations _welcomeScreenLocalizations =
      WelcomeScreenLocalizations();
  @override
  Widget build(BuildContext context) {
    return TransparentAppBarPage(
      body: ListView(
        children: <Widget>[
          /* The first item is the image, which we want to fit to the full width of the screen */
          Image(
            fit: BoxFit.fitWidth,
            image: AssetImage(
              'assets/images/welcome_image.jpg',
            ),
          ),
          /* The sized box is to help us space items */
          const SizedBox(
            height: 24,
          ),
          Text(
            _welcomeScreenLocalizations.appNameTitle(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 12,
          ),

          /// We use a container here to make sure that the Icon's Image
          /// stays within the bounds of 96 x 96.
          Container(
            width: 96,
            height: 96,
            child: Image(
              fit: BoxFit.contain,
              image: AssetImage(
                'assets/icons/ic_notebook.png',
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          /* Rich text helps us to display text with multiple styles */
          Center(
            child: RichText(
              text: TextSpan(
                text: _welcomeScreenLocalizations.taskMadeText(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: ' ${_welcomeScreenLocalizations.forPeopleText()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Text(
              _welcomeScreenLocalizations.byPeopleText(),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          // Other ways to write buttons.
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
                  _welcomeScreenLocalizations.getStartedBtnText(),
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/signIn');
            },
          ),
        ],
      ),
    );
  }
}
