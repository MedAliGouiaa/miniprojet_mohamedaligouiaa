import 'package:flutter/material.dart';
class MaPremierePage extends StatelessWidget {

  const MaPremierePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/dr3.png',),
              ),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              //child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Description de Food Delivry'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, '/');
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Nos menus'),
              onTap: () {
                Navigator.pushNamed(context, '/deuxieme');
              },
            ),
            ListTile(
              title: const Text('Nos partenaires'),
              onTap: () {
                /* showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('Option Numéro 2'),
                          content: Text('Message a afficher de l\'option 2'),
                        )); */
                Navigator.pushNamed(context, '/troisieme');
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Inscription à la livraison à domicile'),
              onTap: () {
                /* showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('Option Numéro 2'),
                          content: Text('Message a afficher de l\'option 2'),
                        )); */
                Navigator.pushNamed(context, '/quatrieme');
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      //backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Food Delivry'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body:
        Container(
            height: double.infinity,
            width: double.infinity,
          child: Stack(children: <Widget>[
         Image.asset(
            ('images/ap.jpg'),
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 100.0),
                Text ('Identité',textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text ('Food Delivry vos facilite la vie et vous livre le menu que vous souhaitez là ou vous serez : un service rapide et de qualité',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize:15.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                SizedBox(height: 250.0),

                _Buttoms(),
              ],

            ),
          ),]),
        ),

    );
  }
}
class _Buttoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButtom(
          iconchoisi: Icons.call,
          nom: 'Appel',
        ),
        CustomButtom(
          iconchoisi: Icons.mail,
          nom: 'MAIL',
        ),
        CustomButtom(
          iconchoisi: Icons.share,
          nom: 'Partage',
        ),
      ],
    ),
  );
}

class CustomButtom extends StatelessWidget {
  final IconData iconchoisi;
  final String nom;

  const CustomButtom({
    required this.iconchoisi,
    required this.nom,
  });

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(this.iconchoisi, color: Colors.white),
        color: Colors.white,
        iconSize: 30.0,
      ),
      Text(this.nom,
          style: TextStyle(
            color: Colors.white,
          )),
    ],
  );
}

