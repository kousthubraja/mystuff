#include<GL/glut.h>
#include<stdio.h> 
#include<math.h>

#define PI 3.14

void display(void)
{
	glClearColor(0.0,0.0,0.0,0.0);
	glClear(GL_COLOR_BUFFER_BIT);
	glColor3f(1.0,1.0,1.0);

	float x,fract=10;

	glBegin(GL_LINES);
		glVertex2f(-1.0,0.0);
		glVertex2f(1.0,0.0);
	glEnd();
	
	glBegin(GL_LINES);
		glVertex2f(0.0,-1.0);
		glVertex2f(0.0,1.0);
	glEnd();
	
	glBegin(GL_POINTS);
	for(x=-fract;x<fract;x+=1)
	{
		//glRectf(i,i,i+0.01,i+0.01);
//		glColor3f(fabs(x),0,0);
		glVertex2f(x/fract,x*cos(x*PI)/fract);
	}
	glEnd();
	printf("display\n");	
	glFlush();
}


void main(int argc, char**argv) { 
    glutInit(&argc, argv);
    glutInitWindowPosition(100,100); 
    glutInitWindowSize(500,500); 
    glutCreateWindow("Hello World"); 
    
    glutDisplayFunc(display);
    glutMainLoop(); 
}
