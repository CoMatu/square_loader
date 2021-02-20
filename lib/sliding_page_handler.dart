import 'package:flutter/material.dart';
import 'package:square_loader/page_navigator.dart';

class SlidingPageHandler extends StatelessWidget {
  const SlidingPageHandler({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _w = MediaQuery.of(context).size.width - 150;

    final _h = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Positioned(
      left: 150,
      child: Container(
        height: _h,
        width: _w,
        child: PageNavigator(),
      ),
    );
  }
}
