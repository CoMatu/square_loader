import 'package:flutter/material.dart';
import 'package:square_loader/navigation/page_navigator.dart';

class SlidingPageHandler extends StatelessWidget {
  /// Виджет, который позиционирует положение страницы относительно боковой
  /// панели. Можно заменить Positioned на AnimatedPositioned и тогда можно будет
  /// добиться эффекта сдвига страницы, чтобы она закрывала и открывала панель
  /// навигации.

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
