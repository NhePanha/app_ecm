import 'dart:developer';
import 'package:ecm/data/app_colors_path/app_colors_path.dart';
import 'package:ecm/models/home_model/account_model.dart';
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
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Image(
                    image: NetworkImage(
                      "https://i.pinimg.com/736x/04/a8/8b/04a88b922e590ea608f1e2de03b76540.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: 20,
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: AppColorsPath.white,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.pinimg.com/1200x/1a/6b/b4/1a6bb4a83cae143b81fce25632796c15.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: AppColorsPath.white),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 2),
                              color: AppColorsPath.white,
                              blurRadius: 10,
                              spreadRadius: 0.5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kim hak",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: AppColorsPath.white,
                            ),
                          ),
                          Text(
                            "kimhak168@gmail.com",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: AppColorsPath.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              // height: double.infinity,
              height: 700,
              width: double.infinity,
              // width: 200,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: account.length,
                itemBuilder: (context, index) {
                  final item = account[index];
                  return InkWell(
                    onTap: () {
                      log("message : $item = ${item.title}");
                      if (item.title == "Account") {
                        log("Next to page account");
                      }
                      if (item.title == "Profile") {
                        log("Next ot page profile");
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: ListTile(
                        leading: Icon(item.icons),
                        title: Text(item.title),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: CustomIconsWidget(icons: Icons.menu_book_sharp, size: 25),
          ),
        ),
        actions: [
          CustomIconsWidget(icons: Icons.notifications_none_outlined, size: 30),
        ],
      ),
      body: Column(
        children: [
          /// bloc search item
          CustomSearchWidget(
            iconleft: Icons.search,
            hin: "Search...",
            iconright: Icons.sort_rounded,
          ),

          /// bloc product item
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: productList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 250,
                ),
                itemBuilder: (context, index) {
                  final item = productList[index];
                  return CardProductWidget(
                    item: item,
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(item: item),
                        ),
                      );
                      log("message");
                    },
                  );
                },
              ),
            ),
          ),
          BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: "card",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "person",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
