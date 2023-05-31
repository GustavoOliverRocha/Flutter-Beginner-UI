import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget
{
	const ProfilePage({Key? key}) : super(key: key);

	Widget build(BuildContext context)
	{
		return Container(
			child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
    			crossAxisAlignment: CrossAxisAlignment.center,
				children: <Widget>[
					//Image.network('https://images.ecycle.com.br/wp-content/uploads/2021/05/20195924/o-que-e-paisagem.jpg'),

					ClipRRect(
    					borderRadius: BorderRadius.circular(100),
						child: Image.network('https://cdn.myanimelist.net/images/voiceactors/1/66041.jpg',width: 100, height: 130),
					),
					Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Text('Hayami Saori',style:TextStyle(fontSize: 24)),
						],
					),
					SizedBox(height: 10),
					Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Column(children: <Widget>[Text('57,507'),Text('Favorites')]),
							SizedBox(width: 10),
							Column(children: <Widget>[Text('456'),Text('Following')]),
							SizedBox(width: 10),
							Column(children: <Widget>[Text('100'),Text('Works')]),
						],
					),
					SizedBox(height: 20),
					Text('https://hayamisaoriofficial.com/'),
					Text('@hayami_official'),
					Text('https://hayamisaoriofficial.com/'),
				],
			),
		);	
	}

}