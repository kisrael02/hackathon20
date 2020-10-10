// urgency: 0 = default, 1 = nonurgent/somedaylist 2 = urgent/follow up, 3 = urgent next action
// time: 0 = default, 1 = 2 minutes or less, 2 = more than 2 minutes
public class intialTask
{
  String taskName;
  int urgency;

  public intialTask (String name, int u)
  {
    urgency= u;
    taskName = name;
  } 
  void setTaskName(String name)
  {
    taskName = name;
  }
  String getTaskName()
  {
    return taskName;
  }

  void setUrgency(int u)
  {
    urgency = u;
  }
  int getUrgency()
  {

    return urgency;
  }
}


public class genTask extends intialTask
{
  int time;
  boolean possible;
  public genTask(String name, int u, int t, boolean p)
  {
    super(name, u);
    taskName = name;
    urgency = u;
    time = t;
    possible = p;
  }

  int getTime()
  {
    return time;
  }
  void setTime(int t)
  {
    time = t;
  }

  boolean getPossible()
  {
    return possible;
  }
  void setPossible(boolean p)
  {
    possible = p;
  }
}


public class project extends genTask
{

  ArrayList<genTask> subTasks = new ArrayList<genTask>();
  String taskName;
  int urgency;
  public project(String name, int u, int time, boolean possible, ArrayList<genTask> t)
  {
    super(name, u, time, possible);
    taskName = name;
    urgency = u;
    subTasks = t;
  }
  void setSubtasks(ArrayList<genTask> t)
  {
    subTasks = t;
  }
  ArrayList<genTask> getSubtasks()
  {
    return subTasks;
  }

  void addSubTask(genTask t)
  {
    ArrayList<genTask> subTaskList = new ArrayList<genTask>();
    subTaskList.add(t);
    setSubtasks(subTaskList);
  }
}


public class calendarTask extends genTask
{
  int month;
  int day;
  int year;

  public calendarTask(String name, int u, int t, boolean p, int m, int d, int y)
  {
    super(name, u, t, p);
    month = m;
    day = d;
    year = y;
  }

  void setMonth(int m)
  {
    month = m;
  }
  int getMonth()
  {
    return month;
  }

  void setDay(int d)
  {
    day = d;
  }
  int getDay()
  {
    return day;
  }

  void setYear(int y)
  {
    year = y;
  }
  int getYear()
  {
    return year;
  }
}

public class deadTask extends genTask
{
  int dayDied;
  int monthDied;
  int yearDied;
  boolean completed;
  
  public deadTask(String name, int u, int t, boolean p, int m, int d, int y, boolean c)
  {
    super(name, u, t, p);
    dayDied = d;
    monthDied = m;
    yearDied = y;
    completed = c;
  }
  void setDayDied(int d)
  {
   dayDied = d;
  }
  int getDayDied()
  {
    return dayDied;
  }
  void setMonthDied(int m)
  {
    monthDied = m;
  }
  int getMonthDied()
  {
    return monthDied;
  }
  void setYearDied(int y)
  {
   yearDied = y;
  }
  int getYearDied()
  {
    return yearDied;
  }
  
  void setCompleted(boolean c)
  {
    completed = c;
    
  }
  boolean getCompleted()
  {
    return completed;
  }
}
