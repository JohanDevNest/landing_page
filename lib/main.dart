import 'package:flutter/material.dart';
import 'router/router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy(); // importar url_strategy para quitar el /# del navegador
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Flurorouter.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
