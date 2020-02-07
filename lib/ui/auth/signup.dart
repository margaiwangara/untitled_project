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
              Container(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      height: 125.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.25),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          'U',
                          style: Theme.of(context).textTheme.headline.copyWith(
                                color: Theme.of(context).accentColor,
                                fontSize: 60.0,
                              ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -20.0,
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(50.0),
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Theme.of(context).accentColor,
                                  Theme.of(context).primaryColor,
                                ],
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Theme.of(context).backgroundColor,
                                size: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              authForm(_formKey, 'Sign Up', true),
            ],
          ),
        ),
      ),
    );
  }
}
