import 'package:flutter/material.dart';
import 'package:square_loader/settings_widget.dart';
import 'package:square_loader/square_loader.dart';

class PageNavigator extends StatelessWidget {
  const PageNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return PageRouteBuilder(pageBuilder: (_, __, ___) {
          switch (settings.name) {
            case '/':
              return SquareLoader();
              break;
            case 'settings':
              return SettingsWidget();
              break;
            default:
              return SquareLoader();
          }
        });
      },
    );
  }
}
