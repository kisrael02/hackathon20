//@ future oliver you fucking dumbass this all sucks
//good  fucking luck Kayla the menu is totally broken
int screen = 0;

void setup()
{
  size(displayWidth, displayHeight);
}
void draw()
{
  background(255);
  genUI();
}
public void genUI()
{
  int menuA = round(height*0.205);
  int menuB = round(height*0.283);
  int menuC = round(height*0.32);
  int menuD = round(height*0.36);
  int menuE = round(height*0.434);
  int menuF = round(height*0.473);
  int menuG = round(height*0.51);
  //menu text x position
  int textX = round(width*0.025);

  //design 
  //boxes
  noStroke();
  fill(238, 237, 246);
  rect(0, 0, int(width*0.15), height);
  fill(64, 55, 156);
  rect(0, 0, width, int(height*0.05));
  // brain dump button
  strokeWeight(2);
  noFill();
  stroke(236, 137, 118);
  rect(int(width*0.025), int(height*(0.075)), int(width*(0.1)), int(height*(0.05)), 40);
  fill(236, 137, 118);
  textSize(int(height*0.023));
  text("+ Brain dump", int(width*0.033), int(height*0.106));
  //big main menu text
  fill(74, 65, 161);
  text("Review", textX, int(height*0.175)); 
  text("Ready to Work", textX, int(height*0.25)); 
  text("Set Some Goals", textX, int(height*0.405)); 
  //smaller main menu text
  textSize(int(height*0.0184));
  fill(171, 166, 211);
  text("Complete Brain Dump", textX, menuA);
  text("Next Action List", textX, menuB);
  text("Calendar", textX, menuC);
  text("Holdups", textX, menuD);
  text("Long Term Goals", textX, menuE);
  text("Projects", textX, menuF);
  text("Tasks", textX, menuG);
  //clickable logic
  if (mousePressed&& (mouseX <width*0.15) && (mouseY< (menuA+(0.0184*height))) && (mouseY < (menuA-(0.009*height))))
  {
    brainDumpUI();
  } 
  else if (mousePressed&& (mouseX <width*0.15) && (mouseY< (menuB+(0.0184*height))) && (mouseY < (menuB-(0.009*height))))
  {
    nextActionListUI();
  } 
  else if (mousePressed&& (mouseX <width*0.15) && (mouseY< (menuC+(0.0184*height))) && (mouseY < (menuC-(0.009*height))))
  {
    calendarUI();
  }
  else if (mousePressed&& (mouseX <width*0.15) && (mouseY< (menuD+(0.0184*height))) && (mouseY < (menuD-(0.009*height))))
  {
    holdUpsUI();
  }
  else if (mousePressed&& (mouseX <width*0.15) && (mouseY< (menuE+(0.0184*height))) && (mouseY < (menuE-(0.009*height))))
  {
    longTermGoalsUI();
  }
  else if (mousePressed&& (mouseX <width*0.15) && (mouseY< (menuF+(0.0184*height))) && (mouseY < (menuF-(0.009*height))))
  {
    projectsListUI();
  }
  else if (mousePressed&& (mouseX <width*0.15) && (mouseY< (menuG+(0.0184*height))) && (mouseY < (menuG-(0.009*height))))
  {
   tasksListUI();
  }
  
}



void brainDumpUI()
{
  println("brain dump");
}
void nextActionListUI()
{
  println("next action list");
}
void calendarUI()
{
  println("calendar");
}
void holdUpsUI()
{
  println("holdups");
}
void longTermGoalsUI()
{
  println("long term goals");
}
void projectsListUI()
{
  println("projects");
}
void tasksListUI()
{
  println("tasks");
}


