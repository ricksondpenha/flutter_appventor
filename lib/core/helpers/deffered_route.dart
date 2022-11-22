import 'package:flutter/material.dart';

class DeferredRoute extends StatelessWidget {
  const DeferredRoute({required this.loader, required this.child, super.key});
  final Future<dynamic> Function() loader;
  final Widget Function() child;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
        future: loader(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return child();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }));
  }
}
