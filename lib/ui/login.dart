import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/community.jpg'),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
            alignment: Alignment.center,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        child: Center(
          child: _authForm(),
        ),
      ),
    );
  }

  _authForm() {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.75),
              blurRadius: 2.5,
              offset: new Offset(-2.5, -2.5),
            ),
          ],
        ),
      ),
    );
  }
}