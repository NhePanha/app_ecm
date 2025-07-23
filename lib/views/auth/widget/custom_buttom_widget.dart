import 'package:ecm/data/app_colors_path/app_colors_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtomWidget  extends StatelessWidget{
  final String title; 
  Function() onClick;
  CustomButtomWidget({
    required this.title,
    required this.onClick,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onClick,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: AppColorsPath.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              color: AppColorsPath.grey,
              blurRadius: 10, spreadRadius: 0.5,
            )
          ]
        ),
        child: Center(
          child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,color: AppColorsPath.white,fontSize: 20),),
        ),
      ),
    );
  }
}