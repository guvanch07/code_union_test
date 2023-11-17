import 'package:domain/models/user_data_response.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/blocs/login/cubit/login_cubit.dart';
import 'package:presentation/core/colors.dart';
import 'package:presentation/screens/home.dart';
import 'package:presentation/utils/widget_ex.dart';
import 'package:presentation/widgets/app_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
    required this.repository,
  });
  final IAuthRepository repository;

  static Route<dynamic> route(IAuthRepository repository) {
    return CupertinoPageRoute(
      builder: (BuildContext context) {
        return LoginScreen(repository: repository);
      },
    );
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(widget.repository),
      child: Form(
        key: _key,
        child: Scaffold(
          backgroundColor: AppColors.bgColor,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              'Авторизация',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                  style: Theme.of(context).textTheme.titleLarge,
                  validator: emailValidator,
                  controller: _emailController,
                  decoration: _inputDeceration(context)),
              const Divider(height: 1, endIndent: 16, indent: 16),
              TextFormField(
                  style: Theme.of(context).textTheme.titleLarge,
                  validator: passwordValidator,
                  controller: _passwordController,
                  decoration: _inputDeceration(context)),
              const SizedBox(height: 32),
              BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) => switch (state) {
                  LoginLoaded(:final data) => _push(context, data),
                  LoginError(:final msg) => _showActionSheet(context, msg),
                  _ => null
                },
                builder: (context, state) => switch (state) {
                  LoginLoading() => const AppButton(onTap: null),
                  _ => AppButton(text: 'Логин', onTap: () => _onLogin(context)),
                },
              ),
              const SizedBox(height: 19),
              AppButton(text: 'Зарегистрироваться', onTap: () {})
            ],
          ),
        ),
      ),
    ).dismissKeyboard();
  }

  void _onLogin(BuildContext context) {
    if (_key.currentState?.validate() ?? false) {
      context.read<LoginCubit>().login(
            email: _emailController.text,
            password: _passwordController.text,
          );
    }
  }

  void _showActionSheet(BuildContext context, String msg) =>
      showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: const Text('Error'),
          message: Text(msg),
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            ),
          ],
        ),
      );

  void _push(BuildContext context, UserDataResponse dataResponse) =>
      Navigator.of(context).pushReplacement(Home.route(dataResponse));

  InputDecoration _inputDeceration(BuildContext context) {
    return InputDecoration(
      hintText: 'Пароль',
      hintStyle: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: const Color(0xffC3C3C3)),
      filled: true,
      border: InputBorder.none,
      fillColor: Colors.white,
      focusColor: Colors.white,
    );
  }

  String? emailValidator(String? text) => switch (text) {
        _ when text != null && text.isEmpty => 'Required',
        _ when text!.isNotEmpty && !text.contains('@') => 'Invalid email',
        _ => null,
      };

  String? passwordValidator(String? text) => switch (text) {
        _ when text != null && text.isEmpty => 'Required',
        _ when text!.isNotEmpty && !text.contains(RegExp(r'[a-z]')) =>
          'Only latters(a-z)',
        _ => null,
      };
}
