import 'package:flutter/material.dart';

Widget SideBar() {
  return Drawer(
    semanticLabel: 'A',
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(800),
              child: Image.network(
                  'https://cdn.myanimelist.net/images/voiceactors/1/66041.jpg',
                  width: 100,
                  height: 130),
            ),
            Text('Saori Hayami'),
          ],
        ),
        Text('@hyayamin5'),
        ListTile(
            leading: Icon(Icons.mail),
            title: Text('SMTP'),
            onTap: () {
              print('sadsad');
            }),
        ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              print('sadsad');
            })
      ],
    ),
  );
}

/*List<Widget> ItemsMenu() {
  return [
    ListTile(
        leading: Icon(Icons.mail),
        title: Text('SMTP'),
        onTap: () {
          print('sadsad');
        }),
    ListTile(
        leading: Icon(Icons.mail),
        title: Text('SMTP'),
        onTap: () {
          print('sadsad');
        })
  ];
}*/
