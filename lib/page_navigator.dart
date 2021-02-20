import 'package:flutter/material.dart';
import 'package:square_loader/settings_widget.dart';
import 'package:square_loader/square_loader.dart';

// Глобальный навигационный ключ для поиска навигатора в контексте приложения
GlobalKey<NavigatorState> pageNavigator = GlobalKey<NavigatorState>();

class PageNavigator extends StatelessWidget {
  /// Навигатор, который при обращении к нему с помощью pageNavigator (см. выше)
  /// показывает нужную страницу в главном вью

  const PageNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: pageNavigator,
      onGenerateRoute: (RouteSettings settings) {
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) {
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
          },
          transitionDuration: const Duration(seconds: 0),
        );
      },
    );
  }
}
