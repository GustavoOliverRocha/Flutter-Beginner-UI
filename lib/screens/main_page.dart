import 'package:flutter/material.dart';

import 'profile_page.dart';
import 'list_page.dart';


class MainPage extends StatefulWidget
{
	const MainPage({Key? key}) : super(key: key);

	@override
    State<MainPage> createState() => _MainPageState();

}
class _MainPageState extends State<MainPage>
{
	List<Widget> pages = [
		ProfilePage(),
		ListPage(),
	];
	int currentIndex = 0;
	Widget build(BuildContext context)
	{
		return Scaffold(
			appBar: AppBar(
				title: Text('Profile'),
				backgroundColor: Colors.purple,
			),

			body:pages[currentIndex],

			bottomNavigationBar:NavigationBar(
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
						label:"List",
						icon:Icon(
							//size: 20,
							Icons.list,
							color: currentIndex == 1 ? Colors.blue : Colors.black,
						),
					),
					NavigationDestination(
						label:"Config",
						icon:Icon(
							//size: 20,
							Icons.settings,
							color:currentIndex == 2 ? Colors.blue : Colors.black,
						),
					),
				],
				onDestinationSelected:(int index){
					setState((){
						currentIndex = index;
					});
				}

			),
		);
	}
}