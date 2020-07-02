import 'package:flutter/material.dart';
import 'HomeScreen.dart';


void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) =>
			MaterialApp(
				title: 'Solid Software test',
				debugShowCheckedModeBanner: false,
				theme: buildThemeData(),
				home: HomeScreen(),
			);

	ThemeData buildThemeData() =>
			ThemeData(
				primarySwatch: Colors.blue,
				visualDensity: VisualDensity.adaptivePlatformDensity,
			);
}