import 'package:flutter/material.dart';
import 'typography.dart';
import 'colors.dart';

final appTheme = ThemeData(
  fontFamily: 'Avenir',
  colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary
  ).copyWith(
      primary: AppColors.primary,
      onPrimary: AppColors.surface,
      secondary: AppColors.secondary,
      secondaryContainer: AppColors.secondaryContainer,
      tertiary: AppColors.success,
      primaryContainer: AppColors.primaryContainer,
      outline: AppColors.border,
      outlineVariant: AppColors.secondaryContainer,
      surface: AppColors.surface,
      surfaceDim: AppColors.primaryContainer,
      surfaceContainer: AppColors.surface,
      surfaceContainerLow: AppColors.onSurface,
      surfaceContainerHighest: AppColors.onSurface,
      onSurface: AppColors.onSurface,
      onSurfaceVariant: AppColors.blueDeep40,
      error: AppColors.red,
  ),
  textTheme: textTheme,
  useMaterial3: true,
);