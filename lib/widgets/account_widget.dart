import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = 'assets/woman.jpg';

    return Container(
      child: Image.asset(
        name,
        fit: BoxFit.cover,
      ),
    );
  }
}
