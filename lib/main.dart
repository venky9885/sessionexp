import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/web.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
      );
  await Permission.storage.request();
  runApp(MyApp());
}
/*
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ElevatedButton(
          child: Text('Woolha.com'),
          onPressed: () {
            print('Pressed');
          },
        ),
        ElevatedButton(
          child: Text('Woolha.com'),
          onPressed: () {
            print('Pressed');
          },
        )
      ] //ElevatedButton(onPressed: () {},child: Text('web'),autofocus: true,clipBehavior: ClipRRect(borderRadius: ,),)
          ),
    );
  }
}
*/
