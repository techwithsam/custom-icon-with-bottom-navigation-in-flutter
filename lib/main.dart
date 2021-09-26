import 'package:flutter/material.dart';
import 'icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Tech With Sam Tutorials'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int _currentIndex = 0;
  List<Widget> _widgetList = [
    PageOne(),
    Container(child: Text('Page Two')),
    Container(child: Text('Page Three')),
    Container(child: Text('Page Four')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _widgetList[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
        selectedLabelStyle: TextStyle(color: Colors.black),
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(MyFlutterApp.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.saved), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.download), label: 'Downloads'),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.user), label: 'Profile'),
        ],
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '5',
              style: Theme.of(context).textTheme.headline4,
            ),
            ListTile(
                leading: Icon(MyFlutterApp.home),
                title: Text('This is a custom home icon')),
            ListTile(
                leading: Icon(MyFlutterApp.saved),
                title: Text('This is a custom saved icon'))
          ],
        ),
      ),
    );
  }
}
