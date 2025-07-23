import 'dart:developer';
import 'package:ecm/data/app_colors_path/app_colors_path.dart';
import 'package:ecm/utils/login_with_widget.dart';
import 'package:ecm/views/auth/widget/custom_buttom_widget.dart';
import 'package:ecm/views/auth/widget/login_widget.dart';
import 'package:ecm/views/auth/widget/sign_up_widget.dart';
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
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              image: NetworkImage(
                "https://i.pinimg.com/736x/94/66/ea/9466eaba2f6a49b3b462ce693489c8b8.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ischeck
                      ? SignUpWidget(
                        email: emailController,
                        password: passwordController,
                        confirm: confirmlController,
                        onClick: () {
                          ischeck = ischeck;
                        },
                      )
                      : LoginWidget(
                        email: emailController,
                        password: passwordController,
                        confirm: confirmlController,
                        onClick: () {
                          ischeck = ischeck;
                        },
                      ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColorsPath.grey,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              ischeck = !ischeck;
                            });
                            log("ischeck $ischeck");
                          },
                          child: Text(
                            ischeck ? "Sign In" : "Sign Up",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColorsPath.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12, top: 30),
                    child: CustomButtomWidget(
                      title: ischeck ? 'Sign In' : "Sign Up",
                      onClick: () {
                        if (ischeck) {
                          log("event sign in");
                        } else {
                          log("event sign up");
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Login With")],
                    ),
                  ),
                  login_with_widget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
