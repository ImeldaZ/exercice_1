import 'dart:math';
exo1_1()
{
  var i;
  var cap_initial = 10000;
  var interet_annuel;
  for (var i=1; i<=10; i++)
      {
    interet_annuel = (cap_initial*(1+0.55))-cap_initial; // formule a revoir
    print("le cumul pour la ${i}iem année est ${interet_annuel}");
    cap_initial = interet_annuel+ cap_initial;
      }
}


exo1_2()
{
  var i = 1;
  var resultat;
  while(i<=100)
  {
    resultat = i*14;
    print("${i}*14 = ${resultat} \n");
    i++;
  }
}

exo1_3()
{
  var etoil = '*';
  var espace = ' ';
  for(var i=0;i<5;i++)
  {
    for(var j=5-i;j>0;j--)
    {
      print("${espace}");  
    }
    for(var j=0;j<=(2*i);j++)
    {
      print("${etoil}");
    }
    print("\n");
  }
    
}
exo1_4(angl_rad)
{
  /*voici  quelque lien pour la convertion:
   * http://fr.answers.yahoo.com/question/index?qid=20080521085715AA64LpB
   * http://www.commentcamarche.net/forum/affich-1711371-convertir-radians-en-degre
   */
  var xdegre = 180*(angl_rad)/PI;
  var xmin = (180*60*angl_rad)/(PI);
  var xsec =60*xmin;
  print("${angl_rad}rad = ${xdegre}degrés");
  print("${angl_rad}rad = ${xmin}minutes");
  print("${angl_rad}rad = ${xsec}secondes");

}
  
  Map<String, int> Exo1_5(String phrase) {
    var cpt = 0;
    String phraseWoutSpaces = phrase.replaceAll('\n', '').
        replaceAll(' ', '').replaceAll('.', '');
    List charList = phraseWoutSpaces.splitChars();
    charList.sort((m,n) => m.compareTo(n));
    var charMap = {};
    for (var char in charList) {
      if(char == 'o'){
        cpt ++ ;
      charMap[char] = charMap.putIfAbsent(char, () => 0) + 1;
      }
}
    if (cpt == 0) 
    { print("l'ocurrence o n'est pas present dans cette phrase");
    } else {
      print("'o' est present  ${cpt} fois dans cette phrase");
    }
    return charMap;
  }

int exo1_6(chaine)
  {
    int i,j,cpt;
    cpt=1;
    i=0;
    j=chaine.length - 1;
    while((i<j)&&(cpt==1))
    {
      if(chaine[i]==chaine[j])
      {
        i++;
        j--;
      }
      else
        cpt=0;
    }
    if (cpt == 1)
    {
      print("${chaine} est un palindrome ");
    }
    else
    {
      print("${chaine} n'est pas un palindrome "); 
    }
  }
//exo1_7();
//exo1_8();
//exo1_9();
//exo1_10();e
