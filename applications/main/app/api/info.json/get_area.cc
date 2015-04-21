������ ��������� ���������� ���������� �� ������� ����� �������-�������� ������������� (������ �������� �� ��� ��� ��� 1993 ��� � � ���� �������� ��������� ����������) 


#define Z_POINT 100 � ���������� �����, ���������������� ���������� 

int map � ������� (���������� ��� ������ ����� ����� �����)- �� ���� ������ ������� ����� � �������� ��� � ������������� ��������� �� ������
double H � ������ ��� ������
char color - ��������

void Indicate_Zone(int map, double H, char color)
{
 double flh[3],// ������, �������, ������ ��� ������ ����� ������� ���
	f_st = 0.975856297,
	l_st = 0.671338036,
	azimut = 360.0/Z_POINT*GR,
	epsilon = 10.0*GR, // ����������� ���� ����� ���� � ������� ��������� ���
	D, a, Si, u_st, u_az,
	r1, r2;
 int    i,x_s,y_s,x_last,y_last;

 flh[0] = f_st;
 flh[1] = l_st;
 Get_xyScr_Large(flh, &x_s, &y_s); //�������� �������������� ��������� ����� ������� ��� � �������� �����������  
 vPutPixel(x_s,y_s,color,0x0); // ����������� ����� ������� ��� �� ������ (�� ���� �����)
 
Get_xyScr_Small(flh, &x_s, &y_s);
 vPutPixel(x_s,y_s,color,0x0);

 D = -6371.0*sin(epsilon);
 D+= sqrt(D*D + 12742.0*H + H*H);
 a = asin(D*cos(epsilon)/(6371+H)); // ����, ������� � ����� �����, ����� ������������� �� ����� ������� ��� � ����� ������� ����

��� ��������� ���������� �������� ��������� ��������� ��� ��� ��������� ���� ����� � ������ ����, �.�., ������ ���� �� �����. ����������� � ������� ������ �������� �������.    


 for(i=0;i<=Z_POINT;i++)
   {
// �������� � ����� ������� ���, �������� ���������� �� ������� (�� ������� �������, ������� � ����������� �� �����)
    Si   = sqrt(1-cos(f_st)*cos(f_st) * sin(azimut*i)*sin(azimut*i));
    u_st = fabs(asin(sin(f_st)/Si)); // �������� ������ ����-�� �
    if(azimut*i>M_PI/2. && azimut*i<1.5*M_PI) u_st = M_PI-u_st;
    u_az = u_st + a;
// �����-�� ��������� � 

    flh[0] = asin(sin(u_az)*Si);
    r1 = fabs(atan(tan(u_st)*sqrt(1-Si*Si)));
    r2 = fabs(atan(tan(u_az)*sqrt(1-Si*Si)));
    D = (u_st<=M_PI/2. && u_az>M_PI/2.) ? (M_PI-r1-r2) : fabs(r1-r2);
    flh[1] = (sin(azimut*i)>0.0) ? (l_st+D) : (l_st-D);
    if(flh[1]<0) flh[1]+=2.*M_PI;

    // � ��������� ���������, ��� ��������� � ��� ���� ��� ��� ���������������, �� �������, �������� ��������� � ����������, ��� ����� 

if(!map)
     {
      Get_xyScr_Large(flh, &x_s, &y_s);
      if(i && abs(x_s - x_last) < 180)
vLine(x_last, y_last, x_s, y_s, color, 0x0); 
//�������, ����� ������ ����� ����� ������� � �� ���������� ����������� 
      x_last = x_s;
      y_last = y_s;
     }
    else
     {
      Get_xyScr_Small(flh, &x_s, &y_s);
      if(i && abs(x_s - x_last) < 180)
	   vLine(x_last, y_last, x_s, y_s, color, 0x0);
      x_last = x_s;
      y_last = y_s;
     }

   }
}



��� �������


/*??????????????????????????????????????????????????????????????????????*/
void Get_xyScr_Large(double *flh,int *x_s, int *y_s)
{
 int     X_LEFT  = 13  ,
	 X_RIGHT = 347,
	 X_MIDEL = 180,
	 Y_LEFT  = 10 ,
	 Y_RIGHT = 171,
	 Y_MIDEL = 91;

 double dX,dY;

 dX = (X_RIGHT-X_LEFT)/M_PI/2.;
 dY = (Y_RIGHT-Y_LEFT)/M_PI;
 if(flh[1]<-M_PI) flh[1]=flh[1]+2.*M_PI;
 if(flh[1]> M_PI) flh[1]=flh[1]-2.*M_PI;
 *x_s = (int)(X_MIDEL+flh[1]*dX);
 *y_s = (int)(Y_MIDEL-flh[0]*dY);

}
/*??????????????????????????????????????????????????????????????????????*/
int Get_xyScr_Small(double *flh,int *x_s, int *y_s)
{
  int    X_LEFT  =  13,
	 X_RIGHT = 347,
	 Y_LEFT  = 191,
	 Y_RIGHT = 352;

  double dX,dY;

 if(flh[0]<M_PI/2.0 && flh[0]>0.0 && flh[1]<M_PI && flh[1]>0.0)
  {
   dX = (X_RIGHT-X_LEFT)/M_PI;
   dY = (Y_RIGHT-Y_LEFT)/M_PI*2.;
   *x_s = X_LEFT  + (flh[1]*dX);
   *y_s = Y_RIGHT - (flh[0]*dY);
   return 1;
  }
 else return 0;
}
/*??????????????????????????????????????????????????????????????????????*


// ������ T = 2*M_PI*pow(rvt[0],1.5)/pow(398600.0,0.5);
