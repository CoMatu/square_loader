import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:square_loader/page_navigator.dart';

class SidebarWidget extends StatelessWidget {
  /// Виджет боковой панели с кнопками, при нажатии на которые происходит навигация
  /// Все оформление боковой панели настроено здесь

  const SidebarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// высота для боковой панели
    final _h = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
// Пункты меню
    final homeItem = Align(
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
          onPressed: () => pageNavigator.currentState.pushNamed('/'),
          icon: Icon(Icons.home_outlined),
          label: Text('Home')),
    );

    final settingsItem = Align(
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
          onPressed: () => pageNavigator.currentState.pushNamed('settings'),
          icon: Icon(Icons.settings_applications_outlined),
          label: Text('Settings')),
    );

    final accountItem = Align(
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.account_box_outlined),
          label: Text('Account')),
    );

    return Container(
      height: _h,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            homeItem,
            settingsItem,
            accountItem,
          ],
        ),
      ),
    );
  }
}
