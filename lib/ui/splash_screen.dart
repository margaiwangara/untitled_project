import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                'https://source.unsplash.com/1280x720/?school,community',
                fit: BoxFit.cover,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.75),
                    Theme.of(context).accentColor.withOpacity(0.75),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Text(
                  'Untitled'.toUpperCase(),
                  style: Theme.of(context).textTheme.title.copyWith(
                        color: Color(0xFFFFFFFC),
                        fontSize: 50.0,
                        letterSpacing: 0.5,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
