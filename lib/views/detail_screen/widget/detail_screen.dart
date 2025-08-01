import 'package:ecm/data/app_colors_path/app_colors_path.dart';
import 'package:ecm/models/home_model/home_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  final ProductList item;
  const DetailScreen({super.key, required this.item});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  bool isCheck = false;
  List<String> tabsize = ["M","L","S"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
            child: Container(
              width: double.infinity,
              height: 300,
              child: Image(
                image: NetworkImage(widget.item.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.item.nameEn,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Divider(color: AppColorsPath.backgorund),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          isCheck ? widget.item.descriptions : "descritions",
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isCheck = !isCheck;
                            print("check : $isCheck");
                          });
                        },
                        icon:
                            isCheck
                                ? Icon(Icons.keyboard_arrow_down)
                                : Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 18,
                                ),
                      ),
                    ],
                  ),
                  Divider(color: AppColorsPath.backgorund),
                  SizedBox(
                    height: 30, 
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tabsize.length,
                      itemBuilder: (context,index){
                        final tab = tabsize[index];
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColorsPath.backgorund,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(child: Text(tab)),
                      );
                    }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
