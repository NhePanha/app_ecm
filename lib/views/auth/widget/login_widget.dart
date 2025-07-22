import 'package:ecm/views/auth/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
class LoginWidget extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController confirm;
  final Function() onClick;
  LoginWidget({
    required this.email,
    required this.password,
    required this.confirm,
    required this.onClick,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 250),
      child: Column(
        children: [
          CustomTextWidget(
            controller: email,
            hin: "Enter Email",
            iconleft: Icon(Icons.email),
            iconsrigth: Icon(Icons.email),
          ),
          CustomTextWidget(
            controller: password,
            hin: "Enter Password",
            iconleft: Icon(Icons.email),
            iconsrigth: Icon(Icons.email),
          ),
          CustomTextWidget(
            controller: confirm,
            hin: "Enter Confirm Password",
            iconleft: Icon(Icons.email),
            iconsrigth: Icon(Icons.email),
          ),
        ],
      ),
    );
  }
}
