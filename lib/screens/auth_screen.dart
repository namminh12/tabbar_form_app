import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'forgot_password_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Authentication'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Đăng nhập'),
              Tab(text: 'Đăng ký'),
              Tab(text: 'Quên MK'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LoginScreen(),
            RegisterScreen(),
            ForgotPasswordScreen(),
          ],
        ),
      ),
    );
  }
}
