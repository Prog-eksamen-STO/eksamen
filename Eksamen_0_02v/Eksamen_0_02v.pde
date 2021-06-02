// hjælpe bibliotek til GUI
import controlP5.*;
ControlP5 cp5;
PFont font; // font til Control P5
GUI gui;

float V;
float A;
float WS;

int y = 0 ; // globale variabler, skal bruges til musse funktionen
int x = 0; // samme her


void setup() {
  size(1280, 720);// vores startside størrelse, 720 x 1280p, burde være fint til at tegne og have tekst bokse i 
  
   // initiering af CP5 og GUI klasserne
   cp5 = new ControlP5(this);
   gui = new GUI();
   
}
void draw() {// her skal alt vores pseudokode ligge i, her kalder vi på alle funktioner
  
  
  drawMainDrawingBoard();//kalder på min drawMainDrawingBoard funktion
  //drawHelpingBox(); // min boks til at hjælpe med at lokalisere min ledning, virkede meget godt, men skal ikke med i det rigtige program
  
  drawWireSize(); // tegner selve wirerens størrelse, efter at den er blevet beregnet
  
}



void drawMainDrawingBoard() {// tegner den inderste firkant, hvor vores kabler, loads osv er i
  rect(80, 70, 850, 580, 10); // fortæller den at det skal være en firkant
}




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
  
  fill(184, 115, 51);// kobber farven
  circle(width/2,height/2,WS);// placerer cirklen midt i vores baggrund
  noFill();// fucker ikke resten op
  
  
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
 A = float (gui.varA.getText());
 WS = float (gui.varWS.getText());
 
  // do some math
  
  gui.varW.setText(str(V*A));
  gui.varR.setText(str(V/A));
  gui.varWS.setText(str(2200/((V/A)/0.0155)));
  
  // do some math
 

}
void save(){
String Amperages = Float.toString(A);// en måde at gøre det på 
String Numbers = (gui.varV.getText()) ;// henter den direkte fra vores gui class, i stedet for at bruge de globale variabler, vi skipper simpelthen over noget af den kode vi har lavet tidligerer
String Watt = (gui.varW.getText());
String Wiresize = (gui.varWS.getText());
String[] minliste = {"Voltage: "+Numbers , "Amperage: "+Amperages, "Watts: " +Watt, "Wiresize: "+ Wiresize};// bruger et string array for at samle alle tal og tekst sammen så det kan gemmes


saveStrings("Saved Values.txt", minliste);
  
  
}
