import 'dart:async';
import 'dart:math';
import 'dart:ui';

class HomeBloc {

	final _colorEmitter = StreamController<Color>();
	Stream<Color> get colorStream => _colorEmitter.stream;

	changeColor() {
		final color = _createRandomColor();
		_colorEmitter.add(color);
	}

	Color _createRandomColor() {
		int r = Random().nextInt(256);
		int g = Random().nextInt(256);
		int b = Random().nextInt(256);
		return Color.fromRGBO(r, g, b, 1);
	}

	dispose() {
		_colorEmitter.close();
	}
}