import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themes/themes_manage.dart';

void main() {
  return runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => new ThemeNotifier(),
    child: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, theme, _) => MaterialApp(
              theme: theme.getTheme(),
              home: Scaffold(
                appBar: new AppBar(
                  title: new Text("Themes"),
                ),
                body: new Center(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        'You have pushed the button this many times:',
                      ),
                      new Text(
                        '$_counter',
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () => {
                            theme.light(),
                          },
                          child: Text('Light Theme'),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () => {
                            theme.dark(),
                          },
                          child: Text('Dark theme'),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () => {
                            theme.red(),
                          },
                          child: Text('Red theme'),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () => {
                            theme.blue(),
                          },
                          child: Text('Blue theme'),
                        ),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: new FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: new Icon(Icons.add),
                ),
              ),
            ));
  }
}
