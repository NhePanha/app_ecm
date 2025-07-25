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
          Padding(
            padding: EdgeInsets.only(left: 12,right: 12,top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconsWidget(
                  icons: Icons.menu_book_sharp,size: 25,
                ),
                CustomIconsWidget(
                  icons: Icons.notifications_none_outlined,size: 30,
                ),
              ],
            ),
          ),
          CustomSearchWidget(iconleft: Icons.search, hin: "Search...",iconright: Icons.sort_rounded,),
        ],
      )
    );
  }
}

