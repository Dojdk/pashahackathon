import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:pashahackathon/pages/mainpage.dart';

import 'pages/qrcodepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Umico',
      theme: ThemeData(
        textTheme: const TextTheme().apply(),
        useMaterial3: true,
      ),
      home: const MainPage(),
      routes: {
        ScanQrPage.routeName: (ctx) => const ScanQrPage(),
      },
    );
  }
}
