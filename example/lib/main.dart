import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:plugin_using_protobuf/plugin_using_protobuf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  final _pluginUsingProtobufPlugin = PluginUsingProtobuf();

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> getData() async {
    print("get test model");
    final platformVersion = await _pluginUsingProtobufPlugin.getTestModel();
    platformVersion?.observer.listen((event) {
      print("got new status ${event.status}");
    });
    platformVersion?.finish();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Counter $counter'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
            getData();
          },
        ),
      ),
    );
  }
}
