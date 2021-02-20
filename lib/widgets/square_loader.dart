import 'package:flutter/material.dart';

class SquareLoader extends StatefulWidget {
  /// Квадратный лоадер, созданный с помощью анимированных контейнеров
  SquareLoader({Key key}) : super(key: key);

  @override
  _SquareLoaderState createState() => _SquareLoaderState();
}

class _SquareLoaderState extends State<SquareLoader> {
  bool start, verticalStart, startHoriz, visible1, visible2, visible3, visible4;
  int speed = 1500;

  @override
  void initState() {
    super.initState();
    start = false;
    verticalStart = false;
    startHoriz = false;
    visible1 = true;
    visible2 = false;
    visible3 = false;
    visible4 = false;
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;

    final background = Container(
      height: 200,
      width: 200,
      color: Colors.black,
    );

    final foreground = Container(
      height: 160,
      width: 160,
      color: color,
    );

    final positioned = Positioned.fill(
        child: Align(
      alignment: Alignment.center,
      child: foreground,
    ));

    final containerV = Container(
      height: 40,
      width: 20,
      color: color,
    );

    final containerH = Container(
      height: 20,
      width: 40,
      color: color,
    );

    final placeholder = Container(
      width: 10,
    );
    final animatedPositionedLeft = visible1
        ? AnimatedPositioned(
            duration: Duration(milliseconds: speed),
            top: start ? 0 : 160,
            onEnd: () {
              setState(() {
                visible1 = false;
                visible3 = true;
              });
              WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
            },
            child: containerV,
          )
        : placeholder;

    final animatedPositionedRight = visible2
        ? AnimatedPositioned(
            onEnd: () {
              setState(() {
                visible2 = false;
                visible4 = true;
              });
              WidgetsBinding.instance.addPostFrameCallback(_afterLayout3);
            },
            duration: Duration(milliseconds: speed),
            top: start ? 0 : 160,
            right: 0,
            child: containerV,
          )
        : placeholder;

    final animatedPositionedTop = visible3
        ? AnimatedPositioned(
            onEnd: () {
              setState(() {
                visible3 = false;
                visible2 = true;
              });
              WidgetsBinding.instance.addPostFrameCallback(_afterLayout2);
            },
            duration: Duration(milliseconds: speed),
            top: 0,
            left: !startHoriz ? 0 : 160,
            child: containerH,
          )
        : placeholder;

    final animatedPositionedBottom = visible4
        ? AnimatedPositioned(
            onEnd: () {
              setState(() {
                visible4 = false;
                visible1 = true;
              });
              WidgetsBinding.instance.addPostFrameCallback(_afterLayout1);
            },
            duration: Duration(milliseconds: speed),
            bottom: 0,
            right: startHoriz ? 0 : 160,
            child: containerH,
          )
        : placeholder;

    final mainStack = Container(
      child: Stack(
        children: [
          background,
          positioned,
          animatedPositionedLeft,
          animatedPositionedRight,
          animatedPositionedTop,
          animatedPositionedBottom,
        ],
      ),
    );

    final button = OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(150, 50),
      ),
      onPressed: () {
        setState(() {
          start = !start;
        });
      },
      child: Text('START'),
    );

    final resetButton = OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(150, 50),
      ),
      onPressed: () {
        setState(() {
          start = false;
          verticalStart = false;
          startHoriz = false;
          visible1 = true;
          visible2 = false;
          visible3 = false;
          visible4 = false;
        });
      },
      child: Text('RESET'),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            mainStack,
            button,
            resetButton,
          ],
        ),
      ),
    );
  }

  void _afterLayout(_) {
    setState(() {
      startHoriz = true;
    });
  }

  void _afterLayout1(_) {
    setState(() {
      start = true;
    });
  }

  void _afterLayout2(_) {
    setState(() {
      start = false;
    });
  }

  void _afterLayout3(_) {
    setState(() {
      startHoriz = false;
    });
  }
}
