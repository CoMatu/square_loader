import 'package:flutter/material.dart';
import '../widgets/sidebar_widget.dart';
import 'sliding_page_handler.dart';

class MainPage extends StatelessWidget {
  /// Главная страница со стеком, который формирует область навигации и просмотра
  /// других страниц

  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SidebarWidget(),
          SlidingPageHandler(),
        ],
      ),
    );
  }
}
