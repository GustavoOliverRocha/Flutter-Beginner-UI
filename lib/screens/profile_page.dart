import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget
{
	const ProfilePage({Key? key}) : super(key: key);

	Widget build(BuildContext context)
	{
		return Container(
			child: Column(
				children: <Widget>[
					//Image.network('https://images.ecycle.com.br/wp-content/uploads/2021/05/20195924/o-que-e-paisagem.jpg'),
					Row(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
						ClipRRect(
    						borderRadius: BorderRadius.circular(100),
							child: Image.network('https://cdn.myanimelist.net/images/voiceactors/1/66041.jpg',width: 100, height: 130),
						),
							Text('Hayami Saori'),
						],
					),
					Row(
						children: <Widget>[
							Column(children: <Widget>[Text('57,507'),Text('Favorites')]),
							Column(children: <Widget>[Text('456'),Text('Following')]),
							Column(children: <Widget>[Text('100'),Text('Works')]),
						],
					),
					Text('https://hayamisaoriofficial.com/'),
					Text('@hayami_official'),
					Text('https://hayamisaoriofficial.com/'),
				],
			),
		);	
	}

}