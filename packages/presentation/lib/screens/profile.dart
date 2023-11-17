import 'package:data/repo/auth_repository.dart';
import 'package:domain/models/user_data_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:presentation/core/colors.dart';
import 'package:presentation/screens/login.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.data});
  final UserDataResponse data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Профиль',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 38),
          SvgPicture.asset('assets/images/person.svg'),
          const SizedBox(height: 15),
          Text(
            data.user?.nickname ?? 'username',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            data.user?.email ?? 'email',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 27),
          GestureDetector(
            onTap: () => _goToLogin(context),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 29, top: 21, bottom: 22.05),
              alignment: Alignment.centerLeft,
              child: Text(
                'Выйти',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w400, color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _goToLogin(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context, LoginScreen.route(AuthRepository()), (route) => false);
  }
}
