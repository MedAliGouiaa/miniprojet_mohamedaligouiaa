class User {
  static const String Pj = 'Petit déjeuner';
  static const String Re = 'Repas';
  static const String Di = 'Diner';

  String prenom = '';
  String nom = '';
  Map<String, bool> commande = {
    Pj: false,
    Re: false,
    Di: false,

  };


  save() {
    print('enregistrement des informations grâce à un service Web');
  }
}
