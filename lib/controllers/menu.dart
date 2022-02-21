import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextButton(
          onPressed: () {},
          child: ListTile(
            leading: Icon(Icons.looks_one_rounded),
            title: Text("First Link"),
            onTap: () {},
          ),
        ),
        TextButton(
          onPressed: () {},
          child: ListTile(
            leading: Icon(Icons.looks_two_rounded),
            title: Text("Drivers"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/drivers');
            },
          ),
        ),
        TextButton(
          onPressed: () {},
          child: ListTile(
            leading: Icon(Icons.people),
            title: Text("Profile"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/profile');
            },
          ),
        )
      ],
    );
  }
}
