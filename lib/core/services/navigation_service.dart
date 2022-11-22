import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../widgets/unknown.page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = Provider.family<GoRouter, String?>(
  (ref, initialLocation) {
    return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: initialLocation,
      navigatorKey: _rootNavigatorKey,
      errorBuilder: (context, state) => const UnknownPage(),
      routes: [
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) => Scaffold(
                appBar: AppBar(
                  title: const Text('Appventor'),
                ),
                body: child),
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => Container(
                  color: Colors.amber,
                ),
              )
            ]),
      ],
    );
  },
);
