// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaterialTheme {
  const MaterialTheme();

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff8f4b3a),
      surfaceTint: Color(0xff8f4b3a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad2),
      onPrimaryContainer: Color(0xff3a0a02),
      secondary: Color(0xff0e6681),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffbbe9ff),
      onSecondaryContainer: Color(0xff001f29),
      tertiary: Color(0xff895120),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdcc4),
      onTertiaryContainer: Color(0xff2f1400),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f6),
      onBackground: Color(0xff231917),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231917),
      surfaceVariant: Color(0xfff5ddd8),
      onSurfaceVariant: Color(0xff534340),
      outline: Color(0xff85736f),
      outlineVariant: Color(0xffd8c2bd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2b),
      inverseOnSurface: Color(0xffffede9),
      inversePrimary: Color(0xffffb4a2),
      primaryFixed: Color(0xffffdad2),
      onPrimaryFixed: Color(0xff3a0a02),
      primaryFixedDim: Color(0xffffb4a2),
      onPrimaryFixedVariant: Color(0xff723425),
      secondaryFixed: Color(0xffbbe9ff),
      onSecondaryFixed: Color(0xff001f29),
      secondaryFixedDim: Color(0xff8ad0ee),
      onSecondaryFixedVariant: Color(0xff004d63),
      tertiaryFixed: Color(0xffffdcc4),
      onTertiaryFixed: Color(0xff2f1400),
      tertiaryFixedDim: Color(0xffffb780),
      onTertiaryFixedVariant: Color(0xff6d3a09),
      surfaceDim: Color(0xffe8d6d2),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ed),
      surfaceContainer: Color(0xfffceae6),
      surfaceContainerHigh: Color(0xfff7e4e0),
      surfaceContainerHighest: Color(0xfff1dfda),
    );
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4a2),
      surfaceTint: Color(0xffffb4a2),
      onPrimary: Color(0xff561f11),
      primaryContainer: Color(0xff723425),
      onPrimaryContainer: Color(0xffffdad2),
      secondary: Color(0xff8ad0ee),
      onSecondary: Color(0xff003545),
      secondaryContainer: Color(0xff004d63),
      onSecondaryContainer: Color(0xffbbe9ff),
      tertiary: Color(0xffffb780),
      onTertiary: Color(0xff4e2600),
      tertiaryContainer: Color(0xff6d3a09),
      onTertiaryContainer: Color(0xffffdcc4),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1a110f),
      onBackground: Color(0xfff1dfda),
      surface: Color(0xff1a110f),
      onSurface: Color(0xfff1dfda),
      surfaceVariant: Color(0xff534340),
      onSurfaceVariant: Color(0xffd8c2bd),
      outline: Color(0xffa08c88),
      outlineVariant: Color(0xff534340),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfda),
      inverseOnSurface: Color(0xff392e2b),
      inversePrimary: Color(0xff8f4b3a),
      primaryFixed: Color(0xffffdad2),
      onPrimaryFixed: Color(0xff3a0a02),
      primaryFixedDim: Color(0xffffb4a2),
      onPrimaryFixedVariant: Color(0xff723425),
      secondaryFixed: Color(0xffbbe9ff),
      onSecondaryFixed: Color(0xff001f29),
      secondaryFixedDim: Color(0xff8ad0ee),
      onSecondaryFixedVariant: Color(0xff004d63),
      tertiaryFixed: Color(0xffffdcc4),
      onTertiaryFixed: Color(0xff2f1400),
      tertiaryFixedDim: Color(0xffffb780),
      onTertiaryFixedVariant: Color(0xff6d3a09),
      surfaceDim: Color(0xff1a110f),
      surfaceBright: Color(0xff423734),
      surfaceContainerLowest: Color(0xff140c0a),
      surfaceContainerLow: Color(0xff231917),
      surfaceContainer: Color(0xff271d1b),
      surfaceContainerHigh: Color(0xff322825),
      surfaceContainerHighest: Color(0xff3d3230),
    );
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xff2a9d8f),
    value: Color(0xff3d9d7d),
    light: ColorFamily(
      color: Color(0xff196b52),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffa5f2d3),
      onColorContainer: Color(0xff002116),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff196b52),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffa5f2d3),
      onColorContainer: Color(0xff002116),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff196b52),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffa5f2d3),
      onColorContainer: Color(0xff002116),
    ),
    dark: ColorFamily(
      color: Color(0xff8ad6b7),
      onColor: Color(0xff003829),
      colorContainer: Color(0xff00513c),
      onColorContainer: Color(0xffa5f2d3),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xff8ad6b7),
      onColor: Color(0xff003829),
      colorContainer: Color(0xff00513c),
      onColorContainer: Color(0xffa5f2d3),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xff8ad6b7),
      onColor: Color(0xff003829),
      colorContainer: Color(0xff00513c),
      onColorContainer: Color(0xffa5f2d3),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        customColor1,
      ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

final textTheme = TextTheme(
  displayLarge: GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 57,
    height: 64 / 57,
    letterSpacing: -0.25,
  ),
  displayMedium: GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 45,
    height: 52 / 45,
  ),
  displaySmall: GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 36,
    height: 44 / 36,
  ),
  headlineLarge: GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    height: 40 / 32,
  ),
  headlineMedium: GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 28,
    height: 36 / 28,
  ),
  headlineSmall: GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    height: 32 / 24,
  ),
  titleLarge: GoogleFonts.lato(
    fontWeight: FontWeight.w700,
    fontSize: 22,
    height: 28 / 22,
  ),
  titleMedium: GoogleFonts.lato(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.1,
  ),
  titleSmall: GoogleFonts.lato(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
  ),
  labelLarge: GoogleFonts.lato(
    fontWeight: FontWeight.w700,
    fontSize: 14,
    height: 20 / 14,
  ),
  labelMedium: GoogleFonts.lato(
    fontWeight: FontWeight.w700,
    fontSize: 12,
    height: 16 / 12,
  ),
  labelSmall: GoogleFonts.lato(
    fontWeight: FontWeight.w700,
    fontSize: 11,
    height: 16 / 11,
  ),
  bodyLarge: GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 24 / 16,
  ),
  bodyMedium: GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 20 / 14,
  ),
  bodySmall: GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 16 / 12,
  ),
);
