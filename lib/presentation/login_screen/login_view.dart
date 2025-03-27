import 'package:depi/presentation/widgets/authentication_app_bar.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [AuthenticationAppBar()]),
    );
  }
}