import 'package:ecm/views/auth/widget/login_widget.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: LoginWidget(email: emailController, password: passwordController, 
      confirm: confirmlController,
      onClick: () {  })),
    );
  }
}