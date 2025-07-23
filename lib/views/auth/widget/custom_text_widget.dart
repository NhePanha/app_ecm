import 'package:ecm/data/app_colors_path/app_colors_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CustomTextWidget extends StatelessWidget{
  final TextEditingController controller;
  final String? hin; 
  final String? label; 
  final Widget? iconleft; 
  final Widget? iconsrigth;
  CustomTextWidget({
    required this.controller,
    this.hin, 
    this.iconleft, 
    this.iconsrigth, 
    this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      width: double.infinity, 
      height: 50,
      decoration: BoxDecoration(color: AppColorsPath.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            color: AppColorsPath.grey,
            blurRadius: 10, 
            spreadRadius: 0.5,
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hin,
            prefixIcon: iconleft,
            suffixIcon: iconsrigth,
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}