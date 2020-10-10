 int total = 0;
 void setup()
  {
      noLoop();
      size(750,750);
  }
  void draw()
  {
      //your code here
      background(#00FFDA);
      for(int x = 0; x < 660; x = x + 60){
        for(int y = 0; y < 660; y = y + 60){
          Die Dice = new Die(x + 50, y);
          Dice.show();
          Dice.roll();
          Dice.total();
        }
      }
  }
  void mousePressed()
  {
      redraw();
      total = 0;
      
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int dieX, dieY, dieRoll;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          dieX = x;
          dieY = y;
      }
      void roll()
      {
          //your code here
          dieRoll = (int)((Math.random()*6) + 1);
          stroke(#000000);
          fill(#FFFFFF);
          if(dieRoll == 1){
            ellipse(dieX+25, dieY+25, 10, 10);
            total = total + 1;
          }
          if(dieRoll == 2){
            ellipse(dieX+15, dieY+15, 10, 10);
            ellipse(dieX+35, dieY+35, 10, 10);
            total = total + 2;
          }
          if(dieRoll == 3){
            ellipse(dieX+10, dieY+10, 10, 10);
            ellipse(dieX+40, dieY+40, 10, 10);
            ellipse(dieX+25, dieY+25, 10, 10);
            total = total + 3;
          }
          if(dieRoll == 4){
            ellipse(dieX+10, dieY+10, 10, 10);
            ellipse(dieX+40, dieY+40, 10, 10);
            ellipse(dieX+40, dieY+10, 10, 10);
            ellipse(dieX+10, dieY+40, 10, 10);
            total = total + 4;
          }
          if(dieRoll == 5){
            ellipse(dieX+10, dieY+10, 10, 10);
            ellipse(dieX+40, dieY+40, 10, 10);
            ellipse(dieX+40, dieY+10, 10, 10);
            ellipse(dieX+10, dieY+40, 10, 10);
            ellipse(dieX+25, dieY+25, 10, 10);
            total = total + 5;
          }
          if(dieRoll == 6){
            ellipse(dieX+10, dieY+10, 10, 10);
            ellipse(dieX+40, dieY+40, 10, 10);
            ellipse(dieX+40, dieY+10, 10, 10);
            ellipse(dieX+10, dieY+40, 10, 10);
            ellipse(dieX+10, dieY+25, 10, 10);
            ellipse(dieX+40, dieY+25, 10, 10);
            total = total +6;
          }
      }
      void show()
      {
          //your code here
          fill(#FF6FF6);
          rect(dieX, dieY, 49, 49, 10);
      }
      void total()
      {
      stroke(#000000);
      fill(#000000);
      rect(100, 660, 250, 50);
      textSize(40);
      fill(#FFFFFF);
      text("Total: " + total, 105, 700);
      if(total >= 450 && total < 500){
        stroke(#6BFF93);
        fill(#6BFF93);
        rect(400, 660, 250, 50);
        textSize(40);
        fill(#000000);
        text("You win!", 405, 700);
      }else if(total < 450){
        stroke(#703201);
        fill(#703201);
        rect(400, 660, 250, 50);
        textSize(40);
        fill(#000000);
        text("You lose! :(", 405, 700);
      }else if(total >= 500){
        stroke(#FFFF42);
        fill(#FFFF42);
        rect(400, 660, 250, 50);
        textSize(40);
        fill(#000000);
        text("JACKPOT", 405, 700);
      }
      }
  }
