import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //child: Text(
          // "Hi I am a drawer",
          // style: TextStyle(color: Colors.white),
          // ),
          // decoration: BoxDecoration(color: Colors.pink),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Naresh Kumar Singh"),
            accountEmail: Text("nareshkumarsingh264@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("nareshkumarsingh264@gmail.com"),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
