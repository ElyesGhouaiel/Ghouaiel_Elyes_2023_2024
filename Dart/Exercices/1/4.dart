import 'dart:io';
import 'dart:math';

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

  // Traiter le choix de l'utilisateur
  switch (choix) {
    case '1':
      print('Vous avez choisi de vous promener.');
      startGame();
      break;
    case '2':
      print('Vous avez choisi de chercher de la nourriture.');
      afficherMessageAleatoire();
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
      print('Choix non valide. Veuillez ré1essayer.');
      startGame(); // Redemander à l'utilisateur de choisir une option
      break;
  }
}

void afficherMessageAleatoire() {
  List<String> messages = [
    "Vous fouillez les maisons et les magasins, mais ne trouvez rien a manger.",
    "Vous trouvez un jardin potager abandonne. Vous re coltez quelques le gumes pour votre prochain repas.",
    "Vous tombez sur un groupe de zombies affames alors que vous fouillez un supermarche. Vous reussissez a vous enfuir en courant,mais vous n'avez pas trouve de nourriture."
  ];

  Random random = Random();
  int index = random.nextInt(messages.length);
  print(messages[index]);
}

void main() {
  startGame();
}