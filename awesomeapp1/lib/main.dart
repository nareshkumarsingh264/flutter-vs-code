//Multiple Widget Center, Container
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: " Aweome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AwesomeApp"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 5, offset: Offset(2.0, 5.0))
              ],
              color: Colors.green,
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.pink],
              )),
          child: Text(
            "I Am A Box",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
