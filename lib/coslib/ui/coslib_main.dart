import 'package:flutter/material.dart';
import 'package:moelab/coslib/service/staticdata.dart';
import 'package:moelab/coslib/ui/screen/delitcos.dart';

class CosplibMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.favorite,color: Colors.pink,),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('CosLib',style: TextStyle(),),
        actions: <Widget>[
          
        ],
      ),
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              children: <Widget>[
                CardHome(
                  img: 'images/black.jpg',
                ),
                CardHome(img: 'images/a/a3.JPG',list: StaticDat().aimg,),
                CardHome(img: 'images/c/c2.JPG',list: StaticDat().cimg,),
                CardHome(img: 'images/d/d13.JPG',list: StaticDat().dimg,),
                CardHome(img: 'images/e/e22.JPG',list: StaticDat().eimg,),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class CardHome extends StatelessWidget {
  final String img;
  final List<String> list;
  CardHome({this.img,this.list});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: GestureDetector(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(_)=> DetilCos(list:list))),
                  child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black38,borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
                child: Column(
                  children: <Widget>[Text('one for all')],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
