
import 'dart:math';

import 'package:flutter/material.dart';
import 'Menu.dart';


class menuCard extends StatelessWidget {
//const menuCard({Key? key]) : super(key: key):
  final Menu menu;

  menuCard({required this.menu});

  @override
  Widget build(BuildContext context) {
    {
      return Card(
          //color:Colors.orangeAccent,
          child: Row(

            children: [
              Icon(
                Icons.star,
                color: Colors.orangeAccent,
              ),
              Text(menu.plat,
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),

              SizedBox(width: 60,),


              Expanded(
                child: Text(menu.restaurant,
                    style: TextStyle(fontSize: 16.0, color: Colors.black)),
              ),
        Image(

                image: AssetImage(menu.image),
                width: 100,
                height:100,
              ),
            ],
          ));
    }
  }
}