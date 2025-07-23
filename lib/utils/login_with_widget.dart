import 'package:ecm/data/app_colors_path/app_colors_path.dart';
import 'package:flutter/material.dart';

class login_with_widget extends StatefulWidget {
  const login_with_widget({
    super.key,
  });

  @override
  State<login_with_widget> createState() => _login_with_widgetState();
}

class _login_with_widgetState extends State<login_with_widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 130, right: 130, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2017/11/10/05/04/facebook-2935402_640.png"),fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  color: AppColorsPath.grey.withValues(alpha: 0.5),
                  blurRadius: 10,
                  spreadRadius: 0.5,
                ),
              ],
            ),
            
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(image: NetworkImage("https://yt3.googleusercontent.com/2eI1TjX447QZFDe6R32K0V2mjbVMKT5mIfQR-wK5bAsxttS_7qzUDS1ojoSKeSP0NuWd6sl7qQ=s900-c-k-c0x00ffffff-no-rj"),fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  color: AppColorsPath.grey.withValues(alpha: 0.5),
                  blurRadius: 10,
                  spreadRadius: 0.5,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(image: NetworkImage("https://cdn.mos.cms.futurecdn.net/z3bn6deaxmrjmQHNEkpcZE.jpg"),fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: AppColorsPath.grey.withValues(alpha: 0.5),
                  blurRadius: 10,
                  spreadRadius: 0.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
