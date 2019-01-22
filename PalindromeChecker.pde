public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  if(onlyLetters(noPunctuation(word.toLowerCase())).compareTo(onlyLetters(noPunctuation(reverse(word.toLowerCase()))))==0)
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    sNew = "";
    //your code here
    for(int i = str.length()-1; i >= 0; i--){
    sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}
public String onlyLetters(String str){
    String a = "";
    for(int i = 0; i < str.length(); i++){
      if(str.charAt(i)!=' '){
        a = a + str.substring(i,i+1);
      }
    }
    return a;
}

public String noPunctuation(String str){
  String a = "";
  for(int i = 0; i < str.length(); i++){
    if(Character.isLetter(str.charAt(i)) == true){
      a = a + str.substring(i,i+1);
    }
  }  
  return a;
}