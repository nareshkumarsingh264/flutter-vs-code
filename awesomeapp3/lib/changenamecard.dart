import 'package:flutter/material.dart';

import 'bgimage.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Bgimage(),
          SizedBox(
            height: 20,
          ),
          Text(
            myText,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              // obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter something here",
                  labelText: "Name"),
            ),
          ),
        ],
      ),
    );
  }
}
