import 'package:flutter/material.dart';

import 'profile_page.dart';
import 'list_page.dart';
import 'config_page.dart';
import 'sidebar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> titulos = [
    'Perfil',
    'Lista',
    'Configuração',
  ];
  List<Widget> pages = [
    ProfilePage(),
    ListPage(),
    ConfigPage(),
  ];
  int currentIndex = 0;
  String titulo_topo = 'Profile';
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: Text(titulo_topo),
        backgroundColor: Color.fromARGB(255, 117, 77, 124),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          selectedIndex: currentIndex,
          destinations: [
            NavigationDestination(
              label: "Profile",
              icon: Icon(
                //size: 20,
                Icons.person,
                color: currentIndex == 0 ? Colors.blue : Colors.black,
              ),
            ),
            NavigationDestination(
              label: "List",
              icon: Icon(
                //size: 20,
                Icons.list,
                color: currentIndex == 1 ? Colors.blue : Colors.black,
              ),
            ),
            NavigationDestination(
              label: "Config",
              icon: Icon(
                //size: 20,
                Icons.settings,
                color: currentIndex == 2 ? Colors.blue : Colors.black,
              ),
            ),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentIndex = index;
              titulo_topo = titulos[index];
            });
          }),
    );
  }
}
