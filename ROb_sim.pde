// Robotic Arm Simulation 
PShape base , arm_1, arm_2, winch;
float rotX, rotY, rotZ;
float pos_X = 1, pos_y = 1/*50*/, pos_z = 1/*50*/;
float alpha, beta, gamma;



void setup()
{
 size(1200,800,P3D);//OPENGL
 base = loadShape("base.obj");
 arm_1 = loadShape("arm_1.obj");
 arm_2 = loadShape("arm_2_1_flip.obj");
 winch = loadShape ("winch.obj");

 base.disableStyle();
 arm_1.disableStyle();
 arm_2.disableStyle();
 winch.disableStyle();
}

void draw()
{
 
  background(#FFFFFF);// was 32 for background
  lights();
  smooth();
  
  fill(#FF00FF);//colour of shape 
  noStroke();// NO, colouring the of outlines 
  
  translate(width/2, height/2);
  rotateX(rotX);
  rotateY(-rotY);
  scale(-1);

 
// Base position is done 
 translate(0,-40,0);
 shape(base);


  
//Arm_1 position is done
translate(100,-2,-74);
rotateY(gamma);
   shape(arm_1);
 
 
// Arm_2 Is done
 translate(0,326,0);
 rotateX(PI);//beta 
 rotateY(beta);//PI//-300
 shape(arm_2);


// winch 
//translate(0,325,0);//(0,0,50)
//rotateX(PI);
//rotateY(gamma);
//shape(winch);
 
}
  

void mouseDragged()
{
rotY -=(mouseX-pmouseX) * 0.01;
rotX -=(mouseY-pmouseY) * 0.01;

}
