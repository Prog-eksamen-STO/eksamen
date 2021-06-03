class GUI{

Textfield varV,varA,varR,varW,varWS;
Button doCalc;
Button save;

GUI(){
    font = createFont("Arial", 14);
    this.draw();
}


void draw(){
  
varV = cp5.addTextfield("varV");//det gør bare at man ved de næste par linjer høre til det textfelt hvad man laver på linje 3
    varV.setPosition(1100, 150)// Vælger positionen af boksen
      .setSize(100, 40)// Størrelsen på boksen
      .setFont(font)//bruger den universale font som man laver på linje 7-10
      .setColor(color(255))// Vælger farven på skriften
      .setAutoClear(false)//Det gør at den ikke skal slette teksten i tekstboksen men man godt selv kan gøre det. 
      .setLabel("Enter Voltage");//Det gør at der kommer et tekstfelt under den boks man har lavet

  
  varA= cp5.addTextfield("varA");
    varA.setPosition(1100, 220)
      .setSize(100, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Enter Amp");
      
      
  varR= cp5.addTextfield("varR");
    varR.setPosition(1100, 290)
      .setSize(100, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Enter Resistance");
      
      
  varW= cp5.addTextfield("varW");
    varW.setPosition(1100, 360)
      .setSize(100, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Enter Watt");
      
      
  varWS= cp5.addTextfield("varWS");
    varWS.setPosition(1100, 450)
      .setSize(100, 50)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Wire Size");
      
      
    doCalc = cp5.addButton("doCalc");
    doCalc.setPosition(1100, 595)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Calculate");
      
      
       save = cp5.addButton("save");
    save.setPosition(1100, 540)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Save");
      
  }
  
  
  
}
