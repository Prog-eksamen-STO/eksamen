class GUI{

<<<<<<< HEAD
Textfield varV,varA,varR,varW,varSZ;
=======
Textfield varV,varA;
>>>>>>> 12884dd73b6e3a8e13ff756230d702c0b1d94bbb
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
<<<<<<< HEAD
      .setLabel("Enter Voltage");
=======
      .setLabel("Enter V");
>>>>>>> 12884dd73b6e3a8e13ff756230d702c0b1d94bbb
  
  
  varA= cp5.addTextfield("varA");
    varA.setPosition(1100, 220)
      .setSize(100, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
<<<<<<< HEAD
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
    doCalc.setPosition(1100, 80)
      .setSize(100, 50)
=======
      .setLabel("Enter A");
      
    doCalc = cp5.addButton("doCalc");
    doCalc.setPosition(1100, 100)
      .setSize(100, 40)
>>>>>>> 12884dd73b6e3a8e13ff756230d702c0b1d94bbb
      .setFont(font)
      .setLabel("Calculate");
      
  }
  
  
  

}
