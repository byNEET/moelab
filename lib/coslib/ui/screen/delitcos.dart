import 'package:flutter/material.dart';

class DetilCos extends StatelessWidget {
  final List<String> list;
  DetilCos({this.list});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              children: list.map((val)=>CardDetil(img: val,)).toList()
            ),
          ),
        ],
      ),
    ),
    );
  }
}
class CardDetil extends StatelessWidget {
  final String img;
  CardDetil({this.img});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          // child: Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: 100,
          //     width: double.infinity,
          //     decoration: BoxDecoration(color: Colors.black38,borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          //     child: Column(
          //       children: <Widget>[Text('one for all')],
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}