import 'package:flutter/material.dart';
import 'package:projeto_api/presentation/screens/produto_card/produto_screen.dart';
import 'config/routes.dart';
import 'config/theme.dart';
import 'injector.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.injector});

  final Injector injector;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Injector _injector;

  @override
  void initState() {
    _injector = widget.injector;
    super.initState();
  }

  @override
  void dispose() {
    _injector.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project API',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routes: Routes.routes,
      home: const ProdutoScreen(),
    );
  }
}