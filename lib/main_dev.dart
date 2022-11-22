import 'package:flutter/material.dart';
import 'package:flutter_appventor/core/widgets/splash.page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart' deferred as app;
import 'config/bootstrap.dart';
import 'config/flavors.dart';
import 'core/helpers/deffered_route.dart';

void main() {
  F.appFlavor = Flavor.DEV;
  runApp(
    FutureBuilder(
        future: bootstrap(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? UncontrolledProviderScope(
                  container: snapshot.requireData,
                  child: DeferredRoute(
                    loader: app.loadLibrary,
                    child: () => app.RootApp(),
                  ),
                )
              : const SplashPage();
        }),
  );
}
