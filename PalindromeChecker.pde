public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }

}
public boolean palindrome(String word)
{
  word = noSpaces(word);
  word = noCapitals(word);
  word = allLetters(word);
  if(reverse(word).equals(word)){
    return true;
  }
  else
    {return false;}
}
public String reverse(String str)
{
    String sNew = new String();
    int sNum = str.length() - 1;
    for(int i = sNum; i >= 0; i = i - 1){
      sNew = sNew + str.substring(i, i + 1);
    }
    return sNew;
}
public String noSpaces(String sWord){
  String a = new String();
  for(int i = 0; i < sWord.length(); i = i + 1){
    if(sWord.substring(i, i + 1).equals(" ") == false){
      a = a + sWord.substring(i, i + 1);
    }
  }
  return a;
}
public String allLetters(String sString){
  String mnllys = new String();
  for(int i = 0; i < sString.length(); i = i + 1){
    if(Character.isLetter(sString.charAt(i)) == true){
      mnllys = mnllys + sString.charAt(i);
    }
  }
  return mnllys;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}


