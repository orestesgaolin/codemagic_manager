import 'package:cached_network_image/cached_network_image.dart';
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
  final List<Build> builds = [];
  final Map<String, Application> apps = {};
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(hintText: 'AuthKey'),
              ),
            ),
            RaisedButton(
              child: Text('Fetch builds'),
              onPressed: onFetch,
            ),
            if (builds.length > 0)
              RaisedButton(
                child: Text('Start latest build again'),
                onPressed: onStart,
              ),
            if (builds.length > 0)
              RaisedButton(
                child: Text('Cancel latest build'),
                onPressed: onCancel,
              ),
            Flexible(
              child: ListView.builder(
                itemCount: builds.length,
                itemBuilder: (context, index) {
                  final build = builds[index];
                  final app = apps[build.appId];
                  return ListTile(
                    title: Text(build.id ?? 'no id'),
                    subtitle: Text(
                        '${app?.appName} | ${build.status}' ?? 'no status'),
                    leading: app?.iconUrl?.isNotEmpty == true
                        ? ClipOval(
                            child: CachedNetworkImage(
                              imageUrl: app.iconUrl,
                              errorWidget: (_, __, ___) => Icon(Icons.error),
                              placeholder: (_, __) => ColoredBox(
                                color: Colors.grey,
                              ),
                            ),
                          )
                        : null,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onStart() async {
    try {
      final appId = builds.first.appId;
      final wId = builds.first.workflowId;
      final branch = builds.first.branch;
      final result = await client.startBuild(appId, wId, branch);
      if (result.wasSuccessful) {
        print('Success!');
        onFetch();
      } else {
        print('Something went wrong: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  void onCancel() async {
    try {
      final buildId = builds.first.id;
      final result = await client.cancelBuild(buildId);
      if (result.wasSuccessful) {
        print('Success!');
        onFetch();
      } else {
        print('Something went wrong: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  void onFetch() async {
    try {
      final authKey = textEditingController.text;
      if (authKey.isEmpty) {
        throw 'AuthKey cannot be empty';
      }
      client = CodemagicClient(
        apiUrl: 'https://api.codemagic.io',
        authKey: authKey,
      );
      final result = await client.getBuilds();
      if (result.wasSuccessful) {
        print('Success! Fetched ${result.data.applications.length}'
            ' apps and ${result.data.builds.length} builds');
        builds.clear();
        builds.addAll(result.data.builds);
        apps.clear();
        final appIds = builds.map((e) => e.appId).toSet();
        await appIds.forEach(fetchApp);
        setState(() {});
      } else {
        print('Something went wrong: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  void fetchApp(String id) async {
    final app = await client.getApplication(id);
    if (app.wasSuccessful) {
      print('Fetched app for id $id');
      apps[id] = app.data;
      setState(() {});
    }
  }
}
