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
				ListView.builder(
					itemCount: 5,
					itemBuilder:(BuildContext context, int index){
					return ListTile(
						title: Text('Item ${(index+1)}'),
						leading: Icon(Icons.person),
						trailing:Icon(Icons.settings),
						onTap: (){print('Items numero: ${(index+1)}');}

					);
				})
				//]
			//),
		);
	}
}