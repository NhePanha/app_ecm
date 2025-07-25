import 'package:ecm/data/app_colors_path/app_colors_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomIconsWidget extends StatelessWidget {
  final IconData icons;
  final double size;
  CustomIconsWidget({required this.icons,required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: AppColorsPath.grey.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Icon(icons,size: size),
      ),
    );
  }
}
