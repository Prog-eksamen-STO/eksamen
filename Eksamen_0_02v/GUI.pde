class GUI{

Textfield varV,varA,varR,varW,varSZ;
Button doCalc;


GUI(){
    font = createFont("Arial", 14);
    this.draw();
}


void draw(){
  
varV = cp5.addTextfield("varV");
    varV.setPosition(1100, 150)
      .setSize(100, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Enter Voltage");

  
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
      
      
  varSZ= cp5.addTextfield("varSZ");
    varSZ.setPosition(1100, 450)
      .setSize(100, 50)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Wire Size");
      
      
    doCalc = cp5.addButton("doCalc");
    doCalc.setPosition(1100, 100)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Calculate");
      
  }
  
  
  

}
