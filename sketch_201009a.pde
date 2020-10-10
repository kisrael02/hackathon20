import java.util.Scanner;
void setup(){
    //size(displayWidth, displayHeight);
}

void draw()
{
    background(255);
    brainDump();
}

String brainDumping = "";
String brainDumped = "";
void keyPressed()
{
if (key != '\n')
   {
      brainDumping += key;
      print(key);
   }
else
  {
     brainDumped = brainDumping;
  }
}

void keyTyped()
{
    print(key);
}
void brainDump()
{
    Scanner sc = new Scanner(System.in);
    ArrayList<String> dumpString = new ArrayList<String>();  
    println("Please dump your brain.");
    String.add(sc.next());
 
}
