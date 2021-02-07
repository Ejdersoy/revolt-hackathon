import 'package:flutter/material.dart';

import './StudentHome.dart';
import './TeacherHome.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool teacher = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context), button = theme.buttonTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, shadowColor: Colors.transparent,
        leading: Padding(padding: EdgeInsets.only(left: 8.0),
          child: Image.asset('assets/images/logo.png'),
        ),
        actions: <Widget>[
          IconButton(color: button.colorScheme.primaryVariant,
            icon: Icon(Icons.search),
            onPressed: () { },
          ),
          IconButton(color: button.colorScheme.primary,
            icon: Icon(Icons.notifications),
            onPressed: () { },
          ),
        ],
      ),
      body: teacher ? TeacherHome() : StudentHome(),
    );
  }
}
