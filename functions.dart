part of exercice_1;

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

  print('    *');
  print('   ***');
  print('  *****');
  print(' *******');
  print('*********');

    
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
    List charList = phraseWoutSpaces.split("");
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
exo1_7(List maliste)
  {
  var listmotmoin_desixcar = new List();
  var listmotplus_desixcar = new List();
  for (var i=0; i<maliste.length; i++)
  {
    if(maliste[i].length<6)
    {
      listmotmoin_desixcar.add(maliste[i]);
    }
    else
    {
      listmotplus_desixcar.add(maliste[i]);
    }
        
  }
  print("la liste de mots ayant moins de 6 carateres :${listmotmoin_desixcar}");
  print("la liste de mots ayant 6 carateres ou plus :${listmotplus_desixcar}");

  }

exo1_8(note)
 {
  var a = 'A';
  var b = 'B';
  var c = 'C';
  var d = 'D';
  var e = 'E';
  var code;
if (note>=90)
{
code = a;
}
else
  if ((note>=80)&&(note<90 ))
  {
     code= b;
  }
  else
    if ((note>=70)&&(note<80 ))
    {
      code = c;
    }
    else
      if ((note>=60)&&(note<70 ))
      {
       code = d;
      }
      else
        if (note<60)
        {
          code = e;
        }
        print("la note standardisée de ${note} est ${code}") ;                     

  }
exo1_9()
  {
 List prenom = ['Jean-Michel', 'Marc', 'Vanessa', 'Anne', 'Maximilien', 'Alexandre-Benoît', 'Louise'];
  for ( var i=0; i<prenom.length; i++)
    {
    print("\n${prenom[i]} ==> ${prenom[i].length} caractéres");
    }
  
  }
//int compteMots(String ph)
//  {
//  var cpt = 0;
//for (var i =0; i< ph.length; i++)
//{
//  if ((ph[i] ==' ')&&(ph[i+1] !=' '))
//  cpt++; 
//  }
//
//return cpt;
//  }
// 
int compteMots(String phrase) {
  int cpt = 0;
 for (var i = 0; i<phrase.length - 1; i++ ) 
  { 
    if ((phrase[i]==' ')&&(phrase[i+1] !=' '))
      cpt ++;
  }
  print("${cpt+1}");
  return cpt;
}  
