import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
import 'config/flavors.dart';

void main() {
  F.appFlavor = Flavor.BETA;
  runApp(const ProviderScope(child: RootApp()));
}
