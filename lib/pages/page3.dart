import 'package:flutter/material.dart';
class MatroisiemePage extends StatelessWidget {

  const MatroisiemePage({Key? key}) : super(key: key);

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
      child:
      Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Card(
        child:Container(
          height: 100,
          color: Colors.white,
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Expanded(
                    child:Image.asset("images/x.png"),
                    flex:2 ,
                  ),
                ),
              ),
              Expanded(
                child:Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text("KFC"),
                          subtitle: Text("Mall of Sfax"),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Consulter Menu'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.orangeAccent))),
                            SizedBox(width: 8,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex:8 ,
              ),
            ],
          ),
        ),
        elevation: 8,
        margin: EdgeInsets.all(10),
      ),
      Card(
        child:Container(
          height: 100,
          color: Colors.white,
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Expanded(
                    child:Image.asset("images/y.png"),
                    flex:2 ,
                  ),
                ),
              ),
              Expanded(
                child:Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text("Farm Ranch"),
                          subtitle: Text("Sfax , Kayed"),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Consulter Menu'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.orangeAccent))),
                            SizedBox(width: 8,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex:8 ,
              ),
            ],
          ),
        ),
        elevation: 8,
        margin: EdgeInsets.all(10),
      ),
      Card(
        child:Container(
          height: 100,
          color: Colors.white,
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Expanded(
                    child:Image.asset("images/z1.jpg", width: 80, height: 100,),
                    flex:2 ,
                  ),
                ),
              ),
              Expanded(
                child:Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text("Sandwich Lotfi"),
                          subtitle: Text("Route Airport"),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Consulter Menu'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.orangeAccent))),
                            SizedBox(width: 8,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex:8 ,
              ),
            ],
          ),
        ),
        elevation: 8,
        margin: EdgeInsets.all(10),
      ),
    ],

    ),
    ),
    );
  }
}