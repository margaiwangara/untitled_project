import 'package:flutter/material.dart';
import 'package:untitled_project/widget/auth_form.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                      Theme.of(context).primaryColor,
                      Theme.of(context).accentColor,
                    ],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds);
                },
                child: Text(
                  'Untitled',
                  style: Theme.of(context).textTheme.headline.copyWith(
                        letterSpacing: 0.85,
                      ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              authForm(_formKey, 'Sign Up', true),
            ],
          ),
        ),
      ),
    );
  }
}
