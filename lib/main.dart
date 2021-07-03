import 'package:sign_language/screens/consttants.dart';
import 'package:sign_language/screens/choose.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Sign Language',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("assets/back.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline2,
                children: const [
                  TextSpan(
                    text: "Gestures",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 62.0),
                  ),
                ],
              ),
            ),
            //
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: OutlinedButton(
                onPressed: () {
                  Future.delayed(
                    Duration.zero,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Choose();
                          },
                        ),
                      );
                    },
                  );
                },
                child: const Text(
                  '  start communicating.',
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.amber[400],
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}
