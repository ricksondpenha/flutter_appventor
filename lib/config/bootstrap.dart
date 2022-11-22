import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appventor/config/firebase/firebase_options_dev.dart'
    as dev;
import 'package:flutter_appventor/config/firebase/firebase_options_beta.dart'
    as beta;
import 'package:flutter_appventor/config/firebase/firebase_options_prod.dart'
    as prod;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'flavors.dart';

Future<ProviderContainer> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  switch (F.appFlavor) {
    case Flavor.DEV:
      await Firebase.initializeApp(
        options: dev.DefaultFirebaseOptions.currentPlatform,
      );
      break;
    case Flavor.BETA:
      await Firebase.initializeApp(
        options: beta.DefaultFirebaseOptions.currentPlatform,
      );
      break;
    case Flavor.PROD:
      await Firebase.initializeApp(
        options: prod.DefaultFirebaseOptions.currentPlatform,
      );
      break;
    default:
      await Firebase.initializeApp(
        options: prod.DefaultFirebaseOptions.currentPlatform,
      );
  }
// beta.DefaultFirebaseOptions
  final ref = ProviderContainer(
    overrides: [],
    observers: [if (F.appFlavor == Flavor.DEV) ProviderLogger()],
  );
  await Future.delayed(const Duration(seconds: 1));

  ///#initialize all the required providers here
  // ref.listen<AuthState>(AuthProvider, (previous, next) { });
  // await container.read(provider)
  return ref;
}

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint(
      '''
      {
      "provider": "${provider.name ?? provider.runtimeType}",
      "newValue": "$newValue"
      }''',
    );
  }
}
