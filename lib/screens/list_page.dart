import 'package:flutter/material.dart';

class ListPage extends StatefulWidget
{
	const ListPage({Key? key}) : super(key: key);

	@override
    State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage>
{
	Widget build(BuildContext context)
	{
		return Container(
			child: //Column(
				//children:[
				CardsManeiros()
				//]
			//),
		);
	}
}



Widget Listinha(){
	return		ListView.builder(
					itemCount: 5,
					itemBuilder:(BuildContext context, int index){
					return ListTile(
						title: Text('Item ${(index+1)}'),
						leading: Icon(Icons.person),
						trailing:Icon(Icons.settings),
						onTap: (){print('Items numero: ${(index+1)}');}
					);
				});
}

Widget CardsManeiros(){
	return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            ListTile(
              leading:           Image.network('https://cdn.myanimelist.net/images/voiceactors/1/66041.jpg',
            fit: BoxFit.cover, // Define como a imagem será ajustada dentro do Card
          ),
              title: Text('Shinobu Kochou'),
              subtitle: Text('From Kimetsu no Yaiba.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      );
}