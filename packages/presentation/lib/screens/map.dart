import 'package:flutter/material.dart';
import 'package:presentation/core/colors.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(child: Text('Map')),
    );
  }
}
