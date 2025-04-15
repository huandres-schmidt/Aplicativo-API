import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:projeto_api/data/repositories/remote/produto_remote_repository_impl.dart';
import 'package:projeto_api/domain/controllers/produto_controller.dart';
import 'package:projeto_api/domain/repositories/produto_remote_repository.dart';
import 'package:projeto_api/presentation/bloc/produto/produto_bloc.dart';

import 'data/datasources/http_client.dart';
import 'external/remote/http_client_impl.dart';

final GetIt getIt = GetIt.instance;

abstract class Injector {
  Injector(this.getIt);

  late final GetIt getIt;

  void dispose();
}

final class InjectorImpl extends Injector {
  InjectorImpl(super.getIt);

  static Future<Injector> initializeDependencies() async {
    log('Inicializando Dependencies...');
    final getIt = GetIt.instance..allowReassignment = true;

    /// API CLIENT -------------------------------------------------------------
    log('Inicializando Dependencia API Cliente');
    getIt.registerSingleton<HttpCliente>(HttpClienteImpl());

    /// REMOTE REPOSITORY ------------------------------------------------------
    log('Inicializando Dependencia Produto Remote Repository');
    getIt.registerSingleton<ProdutoRemoteRepository>(
        ProdutoRemoteRepositoryImpl());

    /// CONTROLLERS ------------------------------------------------------------
    log('Inicializando Dependencia Controller');
    getIt.registerSingleton<ProdutoController>(ProdutoController(
      getIt<ProdutoRemoteRepository>(),
    ));

    /// BLOC -------------------------------------------------------------------
    log('Inicializando Dependencia Produto BLoC');
    getIt.registerSingleton<ProductBloc>(
      ProductBloc(
        getIt.get<ProdutoController>(),
      ),
    );

    return InjectorImpl(getIt);
  }

  @override
  void dispose() {
    Future.wait([
      getIt.get<ProductBloc>().close(),
    ]);
  }
}
