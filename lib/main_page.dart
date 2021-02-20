import 'package:flutter/material.dart';
import 'package:square_loader/sidebar_widget.dart';
import 'package:square_loader/sliding_page_handler.dart';

class MainPage extends StatelessWidget {
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
