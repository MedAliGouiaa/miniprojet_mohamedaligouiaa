import 'package:flutter/material.dart';
import '../models/user.dart';

class MaquatriemePage extends StatefulWidget {
  @override
  _MaquatriemePageState createState() => _MaquatriemePageState();
}

class _MaquatriemePageState extends State<MaquatriemePage> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();
  int selectedRadio=0;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profil utilisateur'),backgroundColor: Colors.orangeAccent,),
        body: Container(
            padding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
                builder: (context) => Form( //car on a besoin de builder le formulaire sur le Widget parent
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration:
                              InputDecoration(hintText: 'Prénom'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Merci de saisir votre prénom';
                                }
                              },
                              onSaved: (value) =>
                                  setState(() => _user.prenom = value!),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                                decoration:
                                InputDecoration(hintText: 'Nom'),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Merci de saisir votre nom';
                                  }
                                },
                                onSaved: (value) =>
                                    setState(() => _user.nom = value!)),
                          ),

                          Expanded(
                            /*child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),*/
                              child: Text('Repas Commandés :', style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 2.0,
                                fontSize:20.0,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),

                          Expanded(
                            child: CheckboxListTile(
                                title: const Text('Petit déjeuner'),
                                value: _user.commande[User.Pj],
                                onChanged: (value) {
                                  setState(() =>
                                  _user.commande[User.Pj] = value!);
                                }),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                                title: const Text('Repas'),
                                value: _user.commande[User.Re],
                                onChanged: (value) {
                                  setState(() => _user
                                      .commande[User.Re] = value!);
                                }),
                          ),
                          Expanded(
                            child:  CheckboxListTile(
                                title: const Text('Diner'),
                                value: _user.commande[User.Di],
                                onChanged: (value) {
                                  setState(() =>
                                  _user.commande[User.Di] = value!);
                                }),
                          ),

                          Expanded(
                            /*child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),*/
                              child: Text('Livraison sur :', style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 2.0,
                                fontSize:20.0,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),


                          Expanded(
                            child: Row(children:<Widget> [

                              Column (
                                children:  <Widget>[
                                  Text("Sfax ville"),
                                  Radio(
                                    value: 1,
                                    groupValue: selectedRadio,
                                    fillColor: MaterialStateProperty.resolveWith(getColor),

                                    onChanged: (val){
                                      print("Radio $val");
                                      setSelectedRadio(1);
                                    },
                                  ),
                                  SizedBox(width:10.0),

                                ],),
                              SizedBox(width: 100.0),
                              Column (
                                children:  <Widget>[
                                  Text("Banlleue sfax"),
                                  Radio(
                                    value: 2,
                                    groupValue: selectedRadio,
                                    fillColor: MaterialStateProperty.resolveWith(getColor),

                                    onChanged: (val){
                                      print("Radio $val");
                                      setSelectedRadio(2);
                                    },
                                  ),
                                  SizedBox(width:10.0),

                                ],)
                            ],
                            ),
                          ),
                          Expanded(
                            child:  Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 16.0),

                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orangeAccent,
                                  ),
                                    onPressed: () {
                                      final form = _formKey.currentState;
                                      if (form!.validate()) {
                                        form.save();
                                        _user.save();
                                        affichage(context);
                                      }
                                    },
                                    child: Text('Enregistrer'))),
                          ),
                        ]
                    ))))
    );
  }
  affichage(BuildContext context) {
    //Scaffold.of(context)
    final snackBar = SnackBar(content: Text('***Soumission du formulaire***'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //.showSnackBar(SnackBar(content: Text('Submitting form')));
  }
  Color getColor(Set<MaterialState> states) {
    return Colors.deepOrange;
  }

}
