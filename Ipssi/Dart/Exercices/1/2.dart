import 'dart:io';

void startGame() {
  // Afficher le message de bienvenue
  print('Bienvenue dans le jeu Ipssi Made By Elyes !');

  // Afficher les options disponibles
  print('Choisissez une option :');
  print('1. Se promener');
  print('2. Chercher de la nourriture');
  print('3. Trouver un abri');
  print('4. Quitter le jeu');

  // Lire l'entrée de l'utilisateur
  String? choix = stdin.readLineSync();

  // Traiter le choix de l'utilis1ateur
  switch (choix) {
    case '1':
      print('Vous avez choisi de vous promener.');
      startGame();
      break;
    case '2':
      print('Vous avez choisi de chercher de la nourriture.');
      startGame();
      break;
    case '3':
      print('Vous avez choisi de trouver un abri.');
      startGame();
      break;
    case '4':
      print('Vous avez choisi de quitter le jeu. Au revoir !');
      break;
    default:
      print('Choix non valide. Veuillez réessayer.');
      startGame(); // Redemander à l'utilisateur de choisir une option
      break;
  }
}

void main() {
  startGame();
}