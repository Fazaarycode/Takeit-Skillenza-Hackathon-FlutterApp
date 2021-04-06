import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hey there!',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomepageTwo(title: 'Takeit'));
  }
}

class MyHomepageTwo extends StatefulWidget {
  const MyHomepageTwo({Key key, title}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepageTwo> {
  String title = 'Takeit';
  bool formDisplay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
          alignment: Alignment.center,
          child: new Column(
            children: [
              new ListView(shrinkWrap: true, children: [
                ListTile(
                    title: TextButton(
                  child: Text('Bookkeeping'),
                )),
                ListTile(
                  title: TextButton.icon(
                    icon: Icon(IconData(59381, fontFamily: 'MaterialIcons')),
                    label: Text('Activate Voice'),
                    onPressed: () {},
                  ),
                ),
                ListTile(
                  title: TextButton.icon(
                    icon: Icon(IconData(61765, fontFamily: 'MaterialIcons')),
                    label: Text('Add Manually'),
                    onPressed: () {
                      setState(() {
                        formDisplay = !formDisplay;
                      });
                    },
                  ),
                ),
              ]),
              new Column(
                children: <Widget>[
                  formDisplay == true
                      ? new ListView(shrinkWrap: true, children: [
                          new ListTile(
                            leading: const Icon(Icons.person),
                            title: new TextField(
                              decoration: new InputDecoration(
                                hintText: "Product Name",
                              ),
                            ),
                          ),
                          new ListTile(
                            leading: const Icon(Icons.person),
                            title: new TextField(
                              decoration: new InputDecoration(
                                hintText: "Quantity",
                              ),
                            ),
                          ),
                          new ListTile(
                            leading: const Icon(Icons.phone),
                            title: new TextField(
                              decoration: new InputDecoration(
                                hintText: "Customer Phone",
                              ),
                            ),
                          ),
                          const Divider(
                            height: 1.0,
                          ),
                        ])
                      : Text('')
                ],
              ),
            ],
          )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Takeit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Bookkeeping'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Bidding'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Accounting'),
            ),
          ],
        ),
      ),
    );
  }
}
