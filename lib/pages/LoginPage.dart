import 'package:firebase/pages/first_screen.dart';
import 'package:firebase/services/sign_in.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 150),
              SizedBox(height: 50),
              Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        signInEmail(
                                emailController.text, passwordController.text)
                            .then((result) {
                          if (result != null) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return FirstScreen();
                                },
                              ),
                            );
                          }
                        });
                      },
                      child: Text('Login'))
                ],
              ),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return FirstScreen();
                },
              ),
            );
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.asset('google_image', height: 35.0),
            Icon(
              Icons.login,
              color: Colors.blue,
              size: 35.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
