import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Container(
      height: _h,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit),
                  label: Text('Settings')),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.access_alarms_rounded),
                  label: Text('Alarm')),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.account_box_outlined),
                  label: Text('Account')),
            ),
          ],
        ),
      ),
    );
  }
}
