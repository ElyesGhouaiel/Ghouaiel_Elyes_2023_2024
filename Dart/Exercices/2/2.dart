import 'dart:io';
import 'dart:math';

void guessColor() {
  // Liste des couleurs disponibles
  List<String> couleurs = ['Rouge', 'Vert', 'Bleu', 'Jaune', 'Violet'];

  // Sélectionner une couleur aléatoire et la stocker dans la variable hiddenColor
  Random random = Random();
  String hiddenColor = couleurs[random.nextInt(couleurs.length)];

  // Demander à l'utilisateur de deviner la couleur
  print('Devinez la couleur cachée parmi les options suivantes :');
  for (int i = 0; i < couleurs.length; i++) {
    print('${i + 1}. ${couleurs[i]}');
  }

  // Lire l'entrée de l'utilisateur
  String? choix = stdin.readLineSync();
  int? indexChoisi = int.tryParse(choix ?? '');

  // Vérifier si l'utilisateur a deviné correctement
  if (indexChoisi != null && indexChoisi > 0 && indexChoisi <= couleurs.length) {
    String couleurDevinee = couleurs[indexChoisi - 1];
    if (couleurDevinee == hiddenColor) {
      print('Bravo ! Vous avez deviné la couleur cachée : $hiddenColor');
    } else {
      print('Dommage ! La couleur cachée était : $hiddenColor');
    }
  } else {
    print('Choix non valide. Veuillez réessayer.');
  }
}

void main() {
  guessColor();
}
