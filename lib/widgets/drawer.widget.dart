import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Theme.of(context).primaryColor])),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/goku.jpg"),
                  )
                ],
              )),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop(); //il cache le menu
              Navigator.pushNamed(context, '/home');
            },
          ),
          Divider(
            //comme balise hr dans html
            color: Theme.of(context).primaryColor,
          ),
          ListTile(
            title: Text("Products"),
            leading: Icon(Icons.ac_unit_rounded),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop(); //il cache le menu
              Navigator.pushNamed(context, '/products');
            },
          ),
          Divider(
            //comme balise hr dans html
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
