import 'package:flutter/material.dart';
/*class MaDeuxiemePage extends StatelessWidget {

  const MaDeuxiemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Food Delivry'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
        body: Center(
      /*margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),*/

          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[

                  Container(
                    decoration: BoxDecoration(
                      color:Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(13),
                    ),

                 child: Row(
          children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 20.0,
                  ),
                  Text("Burger",style: TextStyle(
                      fontWeight:FontWeight.bold,

                  ),
                  ),

                  SizedBox(width: 80.0),
                  Text("KFC"),
                  SizedBox(width: 80.0),

                  Image.asset('images/b.png',height: 80,width: 80),
    ],
                 ),
              ),

              SizedBox(height: 10.0,),

          Container(
            decoration: BoxDecoration(
              color:Colors.orangeAccent,
              borderRadius: BorderRadius.circular(13),
            ),


              child:Row(
                children:  <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 20.0,
                  ),
                  Text("Pizza",style: TextStyle(
                      fontWeight:FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 30.0),
                  Text("Farm Ranch"),
                  SizedBox(width: 30.0),
                  Image.asset('images/p.png',height: 80,width: 200),],
              ),
          ),

              SizedBox(height: 10.0,),

              Container(
            decoration: BoxDecoration(
              color:Colors.orangeAccent,
              borderRadius: BorderRadius.circular(13),
            ),

              child:Row(
                children:  <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 20.0,
                  ),
                  Text("Frites",style: TextStyle(
                      fontWeight:FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 30.0),
                  Text("Sandwich Lotfi"),
                  SizedBox(width: 30.0),
                  Image.asset('images/f.png',height: 80,width: 200),],),),

            ],

          ),
        ),
        );

  }
  }*/
import 'package:flutter/material.dart';
import 'menuCard.dart';
import 'Menu.dart';


class MaDeuxiemePage extends StatelessWidget {
  List<Menu> menuObj = [

    Menu('Burger','KFC','images/b1.jpg'),

    Menu('Pizza','Tonton','images/p1.jpg'),
    Menu('Frites','sandwich Lotfi','images/f1.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Food Delivery'),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:menuObj
                .map((menu) => menuCard(
                  menu:menu,
                ))
                .toList(),

          ),
        ));
  }
}