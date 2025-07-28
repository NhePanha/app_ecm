// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecm/data/app_colors_path/app_colors_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CustomSearchWidget extends StatelessWidget{
  final IconData iconleft; 
  final String hin; 
  final IconData? iconright;
  final TextEditingController? searchcontroller;
  CustomSearchWidget({
   required this.iconleft, 
   required this.hin, 
   this.iconright, 
   this.searchcontroller,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 12,right: 12,top: 10),
      decoration: BoxDecoration(color: AppColorsPath.grey.withValues(alpha: 0.3), 
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
        child: TextField(
          decoration: InputDecoration(
            hintText: hin,
            prefixIcon: Icon(iconleft),
            suffixIcon: Icon(iconright),
            border: InputBorder.none
          )
        ),
      ),
    );
  }
}
