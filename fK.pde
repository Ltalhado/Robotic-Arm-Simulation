float L = 50;
float J = 70;

void fk(){
 float  X = pos_X;
 float  Y = pos_Y;
 float  Z = pos_Z;
 
 
 float A = sqrt(Y*Y+X*X);
 float dir = sqrt(Z*Z+A*A);
 
  alpha =  PI/2-(atan2(A, Z)+acos((J*J-L*L-dir*dir)/(-2*L*dir)));
  beta = -PI+acos((dir*dir-J*J-L*L)/(-2*L*J)); 
  gamma = atan2 (Y, X);
 


}

// Every five seconds the arm should change orientation 
void time(){
// use if statement to set time function
time += ((float) millis()/1000 -  millisec)*(speed/4);
if (time>=4) time= 0;
 millisec = (float)millis()/1000;
}
void pos_FK(){
    fk();
 time();
  pos_X = sin(time*PI/2)*30;// negative angle coordinates 
  //pos_X = sin(time*PI/-2)*20; // postive angle coordinates 
  pos_Z = sin(time*PI/-2)*20;

}
