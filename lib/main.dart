import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:projeto_api/injector.dart';
import 'app.dart';

Future<void> main() async{
  final Injector injector = await _initializeApp();
  runApp(MyApp(injector: injector));
}

Future<Injector> _initializeApp() async {
  log('Método initializeApp abrindo...');
  final Injector injector = await InjectorImpl.initializeDependencies();
  return injector;
}


