import 'package:flutter/material.dart';
import 'package:flutter_appventor/config/bootstrap.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
import 'config/flavors.dart';

void main() async {
  F.appFlavor = Flavor.PROD;
  runApp(UncontrolledProviderScope(
    container: await bootstrap(),
    child: const RootApp(),
  ));
}
