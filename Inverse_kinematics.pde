float time , millisec , speed = 4;
float H = 50;
float K = 70;

void inverse_k(){
 float  X = pos_X;
 float  Y = pos_Y;
 float  Z = pos_Z;
 
 
 float A = sqrt(Y*Y+X*X);
 float dir = sqrt(Z*Z+A*A);
 
  alpha =  PI/2-(atan2(A, Z)+acos((K*K-H*H-dir*dir)/(-2*H*dir)));
  beta = -PI+acos((dir*dir-K*K-H*H)/(-2*H*K)); //(-2*H*T)
  gamma = atan2(Y, X);
 
 //<>//

}

// Every five seconds the arm should change orientation 
void settime(){
// use if statement to set time function
time += ((float) millis()/1000 -  millisec)*(speed/4);
if (time>=4) time= 0;
 millisec = (float)millis()/1000;
}
void pos_IK(){
inverse_k();
 settime();
  pos_X = sin(time*PI/-2)*30;// negative angle coordinates 
  //pos_X = sin(time*PI/-2)*20; // postive angle coordinates 
  pos_Z = sin(time*PI/2)*20;

}
