import 'package:flutter/material.dart';

class AccountModel {
  final IconData icons; 
  final String title; 

  AccountModel({
    required this.icons, 
    required this.title, 
  });
}
List<AccountModel> account = [
  AccountModel(icons: Icons.account_circle, title: "Account"),
  AccountModel(icons: Icons.person, title: "Profile"),
  AccountModel(icons: Icons.settings, title: "Settings"),
  AccountModel(icons: Icons.lock, title: "Privacy"),
  AccountModel(icons: Icons.notifications, title: "Notifications"),
  AccountModel(icons: Icons.history, title: "Activity"),
  AccountModel(icons: Icons.help, title: "Help"),
  AccountModel(icons: Icons.logout, title: "Logout"),
  AccountModel(icons: Icons.security, title: "Security"),
  AccountModel(icons: Icons.info, title: "About"),
];