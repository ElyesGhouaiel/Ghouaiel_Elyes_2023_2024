class Starter {
  String nom;
  String type;
  String caractere;

  Starter(this.nom, this.type, this.caractere);

  void getInfo() {
    print('Nom: $nom');
    print('Type: $type');
    print('Caractère: $caractere');
  }

  void attack() {
    print('$nom attaque !');
    if (type == 'feu' && caractere == 'flemmard') {
      print('LA MAISON BRÛLE');
    } else if (type == 'eau' && caractere == 'joyeux') {
      print('Encore une fuite…');
    } else if (type == 'électrique' && caractere == 'généreux') {
      print('Ma batterie portable est enfin pleine !');
    }
  }
}

void main() {
  Starter salameche = Starter('Salamèche', 'feu', 'flemmard');
  Starter carapuce = Starter('Carapuce', 'eau', 'joyeux');
  Starter pikachu = Starter('Pikachu', 'électrique', 'généreux');

  salameche.getInfo();
  salameche.attack();

  carapuce.getInfo();
  carapuce.attack();

  pikachu.getInfo();
  pikachu.attack();
}
