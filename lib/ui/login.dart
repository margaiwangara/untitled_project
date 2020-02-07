import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                        labelText: 'Email',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[300],
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                      ),
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[400],
                      )),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Your Password',
                        labelText: 'Password',
                      ),
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[400],
                      )),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.montserrat(
                              fontSize: 15.0,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                primaryColor,
                                accentColor,
                              ])),
                      child: RaisedButton(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            return Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Processing...'),
                              ),
                            );
                          }
                          return false;
                        },
                        child: Text(
                          'Log In',
                          style: GoogleFonts.montserrat(
                              fontSize: 15.0, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Dont\'t have an account? ',
                          style: GoogleFonts.montserrat(
                            fontSize: 15.0,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.montserrat(
                              fontSize: 15.0,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _authFormContainer() {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
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
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'Welcome Back',
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Login to your account',
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Theme.of(context).primaryColorLight,
                      ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                _authForm(),
                SizedBox(
                  height: 5.0,
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot your password?',
                      style: Theme.of(context).textTheme.body1.copyWith(
                            color: Theme.of(context).primaryColorLight,
                          ),
                    ))
              ],
            )),
      ),
    );
  }

  _authForm() {
    return Builder(builder: (BuildContext context) {
      return Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
                filled: true,
                fillColor: Color(0xFFF1F1F1),
                border: const OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  borderSide: const BorderSide(
                    style: BorderStyle.none,
                  ),
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Email is required';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: const Color(0xFFF1F1F1),
                border: const OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Password is required';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Processing...'),
                      ),
                    );
                  }
                },
                color: Colors.teal,
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      );
    });
  }
}
