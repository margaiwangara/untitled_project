import 'package:flutter/material.dart';
import 'package:untitled_project/widget/auth_form.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 15.0,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      color:
                          Theme.of(context).primaryColorLight.withOpacity(0.5),
                      width: 2.0,
                    ),
                  )),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30.0,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                      horizontal: 15.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        _pageTop(),
                        _pageBottom(_formKey),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  _pageTop() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 15.0,
        ),
        Container(
          height: 150.0,
          width: 150.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor.withOpacity(0.25),
          ),
          child: Center(
            child: Icon(
              Icons.lock,
              size: 70.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          'Forgot your password?',
          style: Theme.of(context).textTheme.subtitle.copyWith(
                color: Colors.black,
                letterSpacing: 0.5,
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
              ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Please enter the email address associated with your account. We will email you a link to reset your password.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.body1.copyWith(
                color: Theme.of(context).primaryColorDark,
                height: 1.5,
              ),
        ),
      ],
    );
  }

  _pageBottom(GlobalKey<FormState> formKey) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          authFormField(TextInputType.emailAddress, 'Email', 'Email'),
          SizedBox(
            height: 10.0,
          ),
          authFormButton('Send'),
        ],
      ),
    );
  }
}
