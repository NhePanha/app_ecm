// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:ecm/data/app_colors_path/app_colors_path.dart';
import 'package:ecm/models/home_model/home_model.dart';
import 'package:flutter/material.dart';

class CardProductWidget extends StatelessWidget {
  final ProductList item;
  CardProductWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorsPath.backgorund,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColorsPath.grey.withValues(alpha: 0.3),
            offset: Offset(0, 1), 
            blurRadius: 10, 
            spreadRadius: 0.5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            width: double.infinity,
            child: Image(image: NetworkImage(item.image), fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.nameEn,
                  style: TextStyle(
                    color: AppColorsPath.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  item.shopNameEn,
                  style: TextStyle(
                    color: AppColorsPath.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "\$${(item.price - item.discount).toStringAsFixed(2)}",
                      style: TextStyle(
                        color: AppColorsPath.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "\$${item.price.toStringAsFixed(2)}",
                      style: TextStyle(
                        color: AppColorsPath.red,
                        decoration: TextDecoration.lineThrough,
                        fontSize: 14,
                        decorationColor: AppColorsPath.red,
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
