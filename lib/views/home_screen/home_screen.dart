import 'dart:developer';

import 'package:ecm/models/home_model/home_model.dart';
import 'package:ecm/views/detail_screen/widget/detail_screen.dart';
import 'package:ecm/views/home_screen/widget/card_product_widget.dart';
import 'package:ecm/views/home_screen/widget/custom_icons_widget.dart';
import 'package:ecm/views/home_screen/widget/custom_search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// bloc Appbar
          Padding(padding: EdgeInsets.only(left: 12, right: 12, top: 50), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomIconsWidget(icons: Icons.menu_book_sharp, size: 25), CustomIconsWidget(icons: Icons.notifications_none_outlined, size: 30)])),

          /// bloc search item
          CustomSearchWidget(iconleft: Icons.search, hin: "Search...", iconright: Icons.sort_rounded),

          /// bloc product item
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: productList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, mainAxisExtent: 250),
                itemBuilder: (context, index) {
                  final item = productList[index];
                  return CardProductWidget(
                    item: item,
                    onClick: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(item: item)));
                      log("message");
                    }
                  );
                },
              ),
            ),
          ),
          BottomNavigationBar(currentIndex: 0, items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"), BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "card"), BottomNavigationBarItem(icon: Icon(Icons.person), label: "person")]),
        ],
      ),
    );
  }
}
