import java.util.scanner;

class main
{
  Scanner sc = new Scanner(System.in);
  int n;
  ArrayList<String> brainDump = new ArrayList<String>;

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
