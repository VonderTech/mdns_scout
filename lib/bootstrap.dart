import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:mdns_scout/infrastructure/logger/logger.dart';

/// A custom [BlocObserver] that observes the state changes of the app's BLoCs.
class AppBlocObserver extends BlocObserver {
  /// A bloc observer for the app.
  ///
  /// This observer is responsible for observing the state changes and transitions
  /// of the app's blocs.
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    appLogger.i('onChange(${bloc.runtimeType}, $change)');
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    appLogger.e('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

/// Boots up the application by executing the provided [builder] function and returning a [Future] that completes when the bootstrapping process is finished.
///
/// The [builder] function should return a [Widget] that represents the root of the application's widget tree.
///
/// Example usage:
/// ```dart
/// bootstrap(() => MyApp());
/// ```
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  FlutterError.onError = (details) {
    appLogger.e(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  // Add cross-flavor configuration here

  runApp(await builder());
}
