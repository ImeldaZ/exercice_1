library exercice_1 ;

import 'dart:math';

part 'functions.dart';
void main()

{
print("Excercice_1:\n");
exo1_1();
print("\nExcercice_2:\n");
exo1_2();
print("\nExcercice_3:\n");
exo1_3();
print("\nExcercice_4: Conversion en degres , minutes et secondes d'un angle en radians Exempl: 3,14 radian\n");
exo1_4(3.14);
print("\nExcercice_5:\n");
Exo1_5("Écrivez un script qui compte le nombre d'occurrences du caractère « o » dans cette phrase.");
print("\nexercice_6: Exemple avec radar\n");
exo1_6('radar');
print("\nExcercice_7:\n");
exo1_7(['Jean', 'Maximilien', 'Brigitte', 'Sonia', 'Jean-Pierre', 'Sandra']);
print("\nExcercice_8: Exemple avec la note 90\n");
exo1_8(90);
print("\nExcercice_9:\n");
exo1_9();
print("""\nExcercice_10: Exemple avec la phrase "bonjour tout le monde"\n""");

compteMots("bonjour tout le monde");
}
