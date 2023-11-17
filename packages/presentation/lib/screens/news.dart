import 'package:flutter/material.dart';
import 'package:presentation/core/colors.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(child: Text('News')),
    );
  }
}
