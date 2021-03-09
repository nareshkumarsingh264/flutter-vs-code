import 'package:flutter/material.dart';
import 'package:awesomeapp5/bgimage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwodController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login App"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Bgimage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(children: <Widget>[
                      Form(
                          child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Username",
                                        labelText: "Username"),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Enter Password",
                                        labelText: "Password"),
                                  )
                                ],
                              ))),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text("Sign In"),
                            color: Colors.blue,
                            textColor: Colors.white,
                          ))
                    ]),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
