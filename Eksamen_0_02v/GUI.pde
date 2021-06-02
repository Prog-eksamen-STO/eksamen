class GUI{

Textfield varV,varA;
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
      .setLabel("Enter V");
  
  
  varA= cp5.addTextfield("varA");
    varA.setPosition(1100, 220)
      .setSize(100, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Enter A");
      
    doCalc = cp5.addButton("doCalc");
    doCalc.setPosition(1100, 100)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Calculate");
      
  }
  
  
  

}
