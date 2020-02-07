import 'package:flutter/material.dart';

Form authForm(GlobalKey<FormState> key, String buttonText, bool signUp) {
  return Form(
    key: key,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (signUp == true) authFormField(TextInputType.text, 'Name', 'Name'),
        authFormField(TextInputType.emailAddress, 'Email', 'Email'),
        SizedBox(
          height: 15.0,
        ),
        authFormField(TextInputType.text, 'Password', 'Password'),
        SizedBox(
          height: 5.0,
        ),
        if (signUp == false) forgotPassword(),
        SizedBox(
          height: 30.0,
        ),
        authFormButton(buttonText),
        SizedBox(
          height: 15.0,
        ),
        if (signUp == true)
          notAMember('Already a member? ', 'Log In')
        else
          notAMember('Not A Member? ', 'Sign Up'),
      ],
    ),
  );
}

TextFormField authFormField(
    TextInputType inputType, String hintText, String labelText) {
  return TextFormField(
    keyboardType: inputType,
    decoration: InputDecoration(
      hintText: hintText,
      labelText: labelText,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[400],
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
    ),
    validator: (value) {
      if (value.isEmpty) {
        return '$labelText is required';
      }
      return null;
    },
    obscureText: labelText == 'Password',
  );
}

Widget forgotPassword() {
  return Builder(
    builder: (BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          InkWell(
              onTap: () {},
              child: Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.body1.copyWith(
                      color: Colors.grey[400],
                      letterSpacing: 0.25,
                      fontWeight: FontWeight.w300,
                    ),
              ))
        ],
      );
    },
  );
}

Widget notAMember(String query, String reply) {
  return Builder(
    builder: (BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            query,
            style: Theme.of(context).textTheme.body1,
          ),
          InkWell(
              onTap: () {},
              child: Text(
                reply,
                style: Theme.of(context).textTheme.body1.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ))
        ],
      );
    },
  );
}

Widget authFormButton(String btnText) {
  return Builder(builder: (BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Material(
          elevation: 5.0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ],
              ),
            ),
            child: Text(
              btnText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.body1.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ));
  });
}
