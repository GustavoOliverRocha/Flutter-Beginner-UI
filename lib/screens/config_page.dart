import 'package:beginner_ui/screens/config_page_tema.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Visual'),
                ListTile(
                  /*trailing: Switch(
                    value: false,
                    onChanged: (value) => {print(value) this.value = value},
                  ),*/
                  leading: Icon(Icons.wallpaper),
                  title: Text('Tema'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                      return ConfigPageTema();
                    }));
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Configurações'),
                ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('SMTP'),
                    onTap: () {
                      print('sadsad');
                    }),
                ListTile(
                    leading: Icon(Icons.wifi),
                    title: Text('API'),
                    onTap: () {
                      print('sadsad');
                    }),
                ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Informações Gerais'),
                    onTap: () {
                      print('sadsad');
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
