import 'package:flutter/material.dart';
import 'icons.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '5',
              style: Theme.of(context).textTheme.headline4,
            ),
            const ListTile(
              leading: Icon(MyFlutterApp.home),
              title: Text('This is a custom home icon'),
            ),
            const ListTile(
              leading: Icon(MyFlutterApp.saved),
              title: Text('This is a custom saved icon'),
            )
          ],
        ),
      ),
    );
  }
}
