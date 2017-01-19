String s = new String();
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
public String reverse(String str)
{
    String sNew = new String(); 
    for(int i = str.length()-1; i >=0; i--)
    {
      if(Character.isLetter(str.charAt(i))==true)  
      {  
        sNew = sNew + str.substring(i,i+1);
      }
    }//your code here
    sNew.toLowerCase();
    return sNew;
}
public boolean palindrome(String word)
{
  //your code here
  String pNew = new String();
  for(int i = 0; i <= word.length()-1; i++)
  {
    if(Character.isLetter(word.charAt(i))==true)  
    {  
      pNew = pNew + word.substring(i,i+1);
    }
  }
  pNew.toLowerCase();
  if(reverse(pNew).equals(pNew))
  {
    return true;
  }
  else
  {
    return false;  
  }
}



