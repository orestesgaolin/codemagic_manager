import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codemagic example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CodemagicClient client;

  @override
  void initState() {
    super.initState();
    client = CodemagicClient(
      apiUrl: 'https://api.codemagic.io',
      authKey: 'SECRET',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text('Fetch'),
          onPressed: () async {
            final result = await client.getBuilds();
            if (result.wasSuccessful) {
              print('Success! Fetched ${result.data.applications.length} apps '
                  'and ${result.data.builds.length} builds');
            } else {
              print('Something went wrong');
            }
          },
        ),
      ),
    );
  }
}
