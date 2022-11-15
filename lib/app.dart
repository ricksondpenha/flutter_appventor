import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return MaterialApp(
        theme: FlexThemeData.light(scheme: FlexScheme.outerSpace),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.outerSpace),
        themeMode: ThemeMode.system,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Appventor'),
          ),
          body: const FlutterLogo(),
        ),
      );
    });
  }
}
