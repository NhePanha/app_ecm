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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text("${widget.item.id}"),
          ),
          Container(
            width: 200,height: 200,
            child: Image(image: NetworkImage(widget.item.image)),
          ),
        ],
      ),
    );
  }
}
