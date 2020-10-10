import java.util.scanner;

class main
{
  Scanner sc = new Scanner(System.in);
  int n;
  ArrayList<String> brainDump = new ArrayList<String>;

    void menu()
  {
      System.out.println("Menu");
      System.out.println("1. Brain dump");
      System.out.println("2. Display brain dump");
      System.out.println("3. Reorganize");
      System.out.println("Please make your choice here");
      n = Integer.parseInt(Scanner.nextInt());
      switch(n)
      {
          case 1:
            addData();
            break;
          case 2:
            display();
            break;
  //add reorganize stuff
          case 3:
            break;
          default:
            System.out.println("Please make a valid choice.");
            menu();
          
      }
  
  void addData()
  {
    System.out.println("Please enter how many ideas you have.");
    n = Integer.parseInt(Scanner.nextInt());
    System.out.println("Please dump your brain.");
    for (int i = 0; i < n; i++)
    {
        brainDump.add(sc.nextLine());
    }
  }

  void display()
  {
      if (brainDump.isEmpty())
      {
        System.out.println("Error: No contents dumped.");
      }
      else
      {
          for (int i = 0; i < brainDump.size(); i++)
          {
            System.out.println(brainDump.get(i));
          }
      }
  }

}
