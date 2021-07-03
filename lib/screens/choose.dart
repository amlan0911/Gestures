import 'package:sign_language/screens/phrases.dart';
import 'package:sign_language/screens/signs.dart';

import 'package:flutter/material.dart';

class Choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("assets/bck.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: OutlinedButton(
                onPressed: () {
                  Future.delayed(
                    Duration.zero,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Signs();
                          },
                        ),
                      );
                    },
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 18.0),
                  child: Text(
                    ' Basic Signs',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue, fontSize: 25.0, height: 2.0),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.white),
              ),
            ),
            //
            const SizedBox(
              height: 40.0,
            ),
            //
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              //  padding: EdgeInsets.all(40),
              child: OutlinedButton(
                onPressed: () {
                  Future.delayed(
                    Duration.zero,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Phrases();
                          },
                        ),
                      );
                    },
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 20.0),
                  child: Text(
                    'Common Phrases',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue, fontSize: 23.0, height: 2.0),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.white,
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
