import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled_project/widget/auth_form.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Form Key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Color primaryColor = Color(0xFF43cea2);
  final Color accentColor = Color(0xFF185a9d);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ShaderMask(
                blendMode: BlendMode.srcATop,
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    center: Alignment.topLeft,
                    radius: 1.0,
                    colors: <Color>[
                      primaryColor,
                      accentColor,
                    ],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds);
                },
                child: Text(
                  'Untitled',
                  style: GoogleFonts.merriweather(
                    textStyle: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.85,
                    ),
                  ),
                ),
              ),
              authForm(_formKey, 'Log In', false),
            ],
          ),
        ),
      ),
    );
  }
  
}
