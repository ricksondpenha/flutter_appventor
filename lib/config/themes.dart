import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.system;
});

final lightTheme = FlexThemeData.light(
  scheme: FlexScheme.outerSpace,
  surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
  blendLevel: 9,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    cardRadius: 12.0,
    bottomSheetRadius: 14.0,
  ),
);
final darkTheme = FlexThemeData.dark(
  scheme: FlexScheme.blumineBlue,
  surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
  blendLevel: 9,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    cardRadius: 12.0,
    bottomSheetRadius: 14.0,
  ),
);
