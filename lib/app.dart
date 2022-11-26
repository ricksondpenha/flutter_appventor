import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/themes.dart';
import 'core/services/navigation_service.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final router = ref.watch(appRouter('/'));
      return MaterialApp.router(
        routerConfig: router,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ref.watch(themeProvider),
      );
    });
  }
}
