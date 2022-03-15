int count=0;
PFont f;
PFont s;
boolean gameRunning=false;
int size;
boolean clickAgain=false;
public void setup(){
  size(720, 720);
  size=240;
  noFill();
  f=createFont("Impact",100.0);
  textFont(f);
  menu();
}
public void menu(){
  textFont(f);
  fill(0,0,0);
  text("Tic Tac Toe", 75,150);
  rect(230,275,100,50);
  s=createFont("Arial Bold", 20);
  textFont(s);
  fill(255,255,255);
  text("Play",260,305);
  playButton();
}
public void gameBoard(){
  for(int i=0;i<=PFont.list().length-1;i++){
    System.out.print(PFont.list()[i]+", ");
  }
  for(int y=0;y<height;y+=size){
    for(int x=0;x<width;x+=size){
      rect(x,y,size,size);
     }
  }
}
public void draw(){
  int tie=0;
  for(int i=0;i<=track.length-1;i++){
    if(track[i]!=null){
      tie++;
    }
  }
  if(checkX()){
    track=new String[9];
  }
  else if(checkO()){
    track=new String[9];
  }
  else if(tie>=9){
    track=new String[9];
    fill(0,0,0);
    gameRunning = false;
    text("TIE",175,350);
  }
  else{
    if(clickAgain==true){
      background(245,245,245);
      menu();
      clickAgain=false;
    }
    
  }
}
void playButton(){
  if(mousePressed==true&&mouseX>=230&&mouseY>=275&&mouseX<=330&&mouseY<=325){
    gameRunning=true;
    System.out.println("running");
    gameBoard();
    textFont(f);
    noFill();
  }
  
}
  
void drawO(int x, int y){
  circle(x,y,150);
}
void drawX(int x, int y){
  line(x,y,x+75,y-75);
  line(x,y,x-75,y+75);
  line(x,y,x-75,y-75);
  line(x,y,x+75,y+75);
}
String[] track=new String[9];
int n;
public void players(){
  if(mouseX<=240&&mouseX>=0&&mouseY<=240&&mouseY>=0&&track[0]==null){
    count++;
    if(count%2!=0){
    track[0]="X";
    drawX(120,120);
    }
    else{
    track[0]="O";
    drawO(120,120);
    }
  }
  else if(mouseX<=480&&mouseX>=240&&mouseY<=240&&mouseY>=0&&track[1]==null){
    count++;
    if(count%2!=0){
    track[1]="X";
    drawX(360,120);
    }
    else{
    track[1]="O";
    drawO(360,120);
    }
  }
  else if(mouseX<=720&&mouseX>=480&&mouseY<=240&&mouseY>=0&&track[2]==null){
    count++;
    if(count%2!=0){
    track[2]="X";
    drawX(600,120);
    }
    else{
    track[2]="O";
    drawO(600,120);
    }
  }
  else if(mouseX<=240&&mouseX>=0&&mouseY<=480&&mouseY>=240&&track[3]==null){
    count++;
    if(count%2!=0){
    track[3]="X";
    drawX(120,360);
    }
    else{
    track[3]="O";
    drawO(120,330);
    }
  }
  else if(mouseX<=480&&mouseX>=240&&mouseY<=480&&mouseY>=240&&track[4]==null){
    count++;
    if(count%2!=0){
    track[4]="X";
    drawX(360,360);
    }
    else{
    track[4]="O";
    drawO(360,360);
    }
  }
  else if(mouseX<=720&&mouseX>=480&&mouseY<=480&&mouseY>=240&&track[5]==null){
    count++;
    if(count%2!=0){
    track[5]="X";
    drawX(600,360);
    }
    else{
    track[5]="O";
    drawO(600,360);
    }
  }
  else if(mouseX<=240&&mouseX>=0&&mouseY<=720&&mouseY>=480&&track[6]==null){
    count++;
    if(count%2!=0){
    track[6]="X";
    drawX(120,600);
    }
    else{
    track[6]="O";
    drawO(120,600);
    }
  }
  else if(mouseX<=480&&mouseX>=240&&mouseY<=720&&mouseY>=480&&track[7]==null){
    count++;
    if(count%2!=0){
    track[7]="X";
    drawX(360,600);
    }
    else{
    track[7]="O";
    drawO(360,600);
    }
  }
  else if(mouseX<=720&&mouseX>=480&&mouseY<=7200&&mouseY>=480&&track[8]==null){
    count++;
    if(count%2!=0){
    track[8]="X";
    drawX(600,600);
    }
    else{
    track[8]="O";
    drawO(600,600);
    }
  }
  //System.out.println(mouseX);
  //System.out.println(mouseY);
}
public boolean checkX(){
  if(track[0]=="X"&&track[1]=="X"&&track[2]=="X"){
    fill(0,0,0);
    text("X Won",150,350);
    gameRunning=false;
    mousePressed=false;
    return true;
  }
  else if(track[3]=="X"&&track[4]=="X"&&track[5]=="X"){
    fill(0,0,0);
    text("X Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[6]=="X"&&track[7]=="X"&&track[8]=="X"){
    fill(0,0,0);
    text("X Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[0]=="X"&&track[3]=="X"&&track[6]=="X"){
    fill(0,0,0);
    text("X Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[1]=="X"&&track[4]=="X"&&track[7]=="X"){
    fill(0,0,0);
    text("X Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[2]=="X"&&track[5]=="X"&&track[8]=="X"){
    fill(0,0,0);
    text("X Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[0]=="X"&&track[4]=="X"&&track[8]=="X"){
    fill(0,0,0);
    text("X Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[2]=="X"&&track[4]=="X"&&track[6]=="X"){
    fill(0,0,0);
    text("X Won",150,350);
    gameRunning=false;
    return true;
  }
  else{
    return false;
  }
}
public boolean checkO(){
  if(track[0]=="O"&&track[1]=="O"&&track[2]=="O"){
    fill(0,0,0);
    text("O Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[3]=="O"&&track[4]=="O"&&track[5]=="O"){
    fill(0,0,0);
    text("O Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[6]=="O"&&track[7]=="O"&&track[8]=="O"){
    fill(0,0,0);
    text("O Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[0]=="O"&&track[3]=="O"&&track[6]=="O"){
    fill(0,0,0);
    text("O Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[1]=="O"&&track[4]=="O"&&track[7]=="O"){
    fill(0,0,0);
    text("O Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[2]=="O"&&track[5]=="O"&&track[8]=="O"){
    fill(0,0,0);
    text("O Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[0]=="O"&&track[4]=="O"&&track[8]=="O"){
    fill(0,0,0);
    text("O Won",150,350);
    gameRunning=false;
    return true;
  }
  else if(track[2]=="O"&&track[4]=="O"&&track[6]=="O"){
    fill(0,0,0);
    text("O Won",150,350);
    gameRunning=false;
    return true;
  }
  else{
    return false;
  }
}
public void mousePressed(){
  if(gameRunning){
    players();
  }
  else{
    clickAgain=true;
  }
}
//public void mouseReleased(){
//  if(gameRunning==false){
//    clickAgain=true;
//  }
//}


//Work on the applied shapes from the student portal.
