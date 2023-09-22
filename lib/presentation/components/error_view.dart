import 'package:flutter/material.dart';
import '../assets/theme/app_theme.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.colors.background,
      child: Center(
        child: Text(
          error,
          style: AppTheme.data.textTheme.bodyMedium,
        ),
      ),
    );
  }
}
