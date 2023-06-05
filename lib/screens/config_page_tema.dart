import 'package:flutter/material.dart';

class ConfigPageTema extends StatefulWidget {
  const ConfigPageTema({Key? key}) : super(key: key);

  @override
  State<ConfigPageTema> createState() => _ConfigPageTemaState();
}

class _ConfigPageTemaState extends State<ConfigPageTema> {
  Color tema = Color.fromRGBO(255, 0, 0, 1);
  Color tema_fundo = Color.fromRGBO(255, 255, 255, 1);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tema_fundo,
      appBar: AppBar(
        title: Text('Temas'),
        backgroundColor: tema,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Quadrado(Colors.yellow, () {
            setState(() {
              tema = Colors.yellow;
            });
          }),
          SizedBox(width: 50),
          Quadrado(Colors.blueAccent, () {
            setState(() {
              tema = Colors.blueAccent;
            });
          }),
          SizedBox(width: 50),
          Quadrado(Colors.redAccent, () {
            setState(() {
              tema = Colors.redAccent;
            });
          }),
        ],
      )),
    );
  }
}

Widget Quadrado(Color cor, Function alterar) {
  return GestureDetector(
    onTap: () {
      //print('dsfsd');
      alterar();
    },
    child: Container(
      width: 50,
      height: 50,
      //color: cor,
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10), // Valor do raio dos cantos
      ),
    ),
  );
}
