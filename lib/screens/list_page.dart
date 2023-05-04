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
			child: Text('ListPage'),
		);
	}
}