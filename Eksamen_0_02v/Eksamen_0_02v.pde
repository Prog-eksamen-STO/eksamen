// hjælpe bibliotek til GUI
import controlP5.*;
ControlP5 cp5;
PFont font; // font til Control P5
GUI gui;

float V;
<<<<<<< HEAD
float A;
=======
>>>>>>> 12884dd73b6e3a8e13ff756230d702c0b1d94bbb

int y = 0 ; // globale variabler, skal bruges til musse funktionen
int x = 0; // samme her
int WS = 0;


void setup() {
  size(1280, 720);// vores startside størrelse, 720 x 1280p, burde være fint til at tegne og have tekst bokse i 
  
   // initiering af CP5 og GUI klasserne
   cp5 = new ControlP5(this);
   gui = new GUI();
   
}
void draw() {// her skal alt vores pseudokode ligge i, her kalder vi på alle funktioner
  
  
  drawMainDrawingBoard();//kalder på min drawMainDrawingBoard funktion
  drawSavingButton(); // kalder på min drawSavingButton funktion
<<<<<<< HEAD
=======
  drawCalculationButtons();
>>>>>>> 12884dd73b6e3a8e13ff756230d702c0b1d94bbb
  //drawHelpingBox(); // min boks til at hjælpe med at lokalisere min ledning, virkede meget godt, men skal ikke med i det rigtige program
  
  drawWireSize(); 
  
}



void drawMainDrawingBoard() {// tegner den inderste firkant, hvor vores kabler, loads osv er i
  rect(80, 70, 850, 580 ); // fortæller den at det skal være en firkant
}
void drawSavingButton () {
  rect(1100, 610, 120, 40);// tegner firkant
  textSize(22);// bestemmer tekst størrelsen
  fill(0);// bestemmer farven på teksten
  text("Save", 1135, 640);// tegner en tekst i kassen
  noFill();// sørger for den ikke boller andre dele af programmets farver
}
<<<<<<< HEAD

=======
void drawCalculationButtons() {

  fill(255, 255, 255);
  rect(1100, 500, 120, 40);
  textSize(30);
  fill(0); 
  text("mm2", 1020, 530);

  fill(255, 255, 255);
  rect(1100, 450, 120, 40);
  textSize(30);
  fill(0); 
  text("W", 1060, 480);

  fill(255, 255, 255);
  rect(1100, 400, 120, 40);
  textSize(30);
  fill(0); 
  text("R", 1060, 430);

  fill(255, 255, 255);
  rect(1100, 350, 120, 40);
  textSize(30);
  fill(0); 
  text("A", 1060, 380);

  fill(255, 255, 255);
  rect(1100, 300, 120, 40);
  textSize(30);
  fill(0); 
  text("V", 1060, 330);
}
>>>>>>> 12884dd73b6e3a8e13ff756230d702c0b1d94bbb
void drawHelpingBox() {// hjælpe kasse til at finde ud af hvornår jeg ramte
  fill(255, 255, 255);// gør den hvid 
  rect(200, 150, 600, 80);// tegner firkanten
  noFill();// fucker ikke de andre op
}

void mouseClicked() {// funktionen der ændre på min x og y variabler så snart der bliver trykket på med mussen, skal også bruges til andre ting
  y = mouseY; //ændre y variable til mussen position ved tryk
  x = mouseX;// deet samme for den her
}
void drawWireSize() {// funktion der skal tegne wireren når man 
  
  fill(100);
  circle(width/2,height/2,V);
  
  
  /*if ((x > 200) && (x < 750) && (y > 150) && (y < 230)) {//længere if statement, der fortæller at hvis mussen er inde for kassen, så skal den gøre den næste linje kode
    println("true", x, y);// lidt hjælpe kode til at diagnosere nogle baby fejl
    fill(211, 211, 211);// gør min kasse grå, i stedet for den normale vide farve, så man kan se forskel
    rect(200, 150, 600, 400);// tegner en kasse
    noFill();// gør resten normalt igen
    fill(184, 115, 51);//gir den kobber farven
    circle(505, 360, 250);//tegner tværsnitsarealet
    noFill();// fucker ikke resten op
    strokeWeight(6);// linjens tykkelse
    line(400, 255, 610, 465);// linjen som går igennem cirklen
    strokeWeight(1);// reset værdien til standart 
    fill(0);// sætter farven til sort igen
    text("Tværsnitsareal Ø", 385, 525);// er teksten til, sådan at man kan se hvad man har lavet
    noFill();// fucker ikke det hele op
    fill(255, 0, 0);// gør den næste firkant rød
    rect(750, 150, 50, 50);// tegner "lukke" boksen
    noFill();// fucker ikke det hele op 
    stroke(255, 255, 255);//gør dem hvide
    line(755, 155, 795, 195);//tegner streger indvendigt i kassen
    line(755, 195, 795, 155);// tegner den anden streg
    stroke(0);// gør at de ikke forbliver hvide
  } else {// else statement
    println("false", x, y );// igen en diagnose kode
  }
  if ((x > 750) && (x < 800) && (y > 150) && (y < 200)) {//det er koden til lukke kassen
    println("close true");// diagnoserings kode
    fill(255);//gør den næste kasse hvid 
    rect(80, 70, 850, 580);// tegner over alt der er lavet indtil nu.
  } */
}


void doCalc(){

 V = float (gui.varV.getText());
<<<<<<< HEAD
 A = float (gui.varA.getText());
 
  // do some math
  
  gui.varW.setText(str(V*A));
  gui.varR.setText(str(V/A));
  gui.varSZ.setText(str(2200/((V/A)/0.0155)));
=======
  
  // do some math
  

  gui.varA.setText(str(V));
>>>>>>> 12884dd73b6e3a8e13ff756230d702c0b1d94bbb

}
