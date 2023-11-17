import 'package:data/repo/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:presentation/core/colors.dart';
import 'package:presentation/screens/login.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Manrope',
        colorScheme: ColorScheme.fromSeed(
          background: AppColors.bgColor,
          seedColor: AppColors.primaryColor,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontFamily: 'Manrope', fontSize: 24, fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(
              fontFamily: 'Manrope', fontSize: 16, fontWeight: FontWeight.w400),
          bodySmall: TextStyle(
              fontFamily: 'Manrope', fontSize: 10, fontWeight: FontWeight.w400),
        ),
      ),
      home: LoginScreen(repository: AuthRepository()),
    );
  }
}
