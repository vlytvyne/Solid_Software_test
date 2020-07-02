import 'package:flutter/material.dart';
import 'HomeBloc.dart';

class HomeScreen extends StatefulWidget {

	@override
	_HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
	final _bloc = HomeBloc();

	final _textStyle = TextStyle(
		fontSize: 30,
		color: Colors.white
	);

	@override
	Widget build(BuildContext context) =>
			Scaffold(
				body: GestureDetector(
					onTap: _bloc.changeColor,
					child: StreamBuilder<Color>(
						stream: _bloc.colorStream,
						initialData: Colors.black,
						builder: (context, snapshot) {
							return Container(
								color: snapshot.data,
								child: Center(
									child: Text(
										'Hey there',
										style: _textStyle,
									),
								),
							);
						}
					),
				),
			);

	@override
	void dispose() {
		super.dispose();
		_bloc.dispose();
	}
}