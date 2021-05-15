import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/map_page.dart';
import 'bloc/mission_manager.dart';
import 'dart:io';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].
void main() async {
  Socket sock = await Socket.connect('192.168.1.106', 12345);

  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MissionManager(sock)),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
