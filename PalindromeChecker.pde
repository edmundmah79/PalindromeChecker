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
      sNew = sNew + str.charAt(i);
    }//your code here
    return sNew;
}
public boolean palindrome(String word)
{
  //your code here

  if(reverse(word).equals(word))
  {
    return true;
  }
  else
  {
    return false;  
  }
}



