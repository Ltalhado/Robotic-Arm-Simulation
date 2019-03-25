 // Robotic Arm Simulation 
PShape base , arm_1, arm_2, winch;
float rotX, rotY;
float pos_X = 1, pos_Y = 50, pos_Z = 50;
float alpha , gamma , beta;

void setup()
{
 size(1200,800,P3D);//OPENGL ||P3D
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
  
  pos_IK();// calling the IK
  pos_FK();
  background(32);// was 32 for background //#FFFFFF
  lights();
  smooth();
  
  fill(#AAAAAA);//colour of shape 
  noStroke();// NO, colouring the of outlines 
  
  translate(width/2, height/2);
  rotateX(rotX);
  rotateY(-rotY);
  scale(-0.75); //0.75

 
// Base position is done 
 translate(0,-40,0);
 shape(base);



//Arm_1 position is done
translate(100,-2,-74);
rotateY(gamma);
   shape(arm_1);
 
 
// Arm_2 Is done
 translate(0,326,0);
 rotateX(PI);
 shape(arm_2);


// winch  is done
translate(-25,30,25);         
rotateX(PI/-2);
shape(winch);
 }
  

void mouseDragged()
{
rotY -=(mouseX-pmouseX) * 0.01;
rotX -=(mouseY-pmouseY) * 0.01;

}
