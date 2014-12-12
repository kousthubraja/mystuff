#include<GL/glut.h>

void disp()
{
	glClearColor(0.0,0.0,0.0,0.0);
	glClear(GL_COLOR_BUFFER_BIT);
	glColor3f(1.0,1.0,1.0);
	
//	glRectf(0.0,0.0,1.0,1.0);
	
	glBegin(GL_LINE);
		glVertex3f(-0.5,-0.5,0.0);
		glVertex3f(0.5,-0.5,0.0);
		glVertex3f(0.5,0.5,0.0);
		glVertex3f(-0.5,0.5,0.0);
	glEnd();

	glBegin(GL_LINE);
		glVertex3f(-0.5,-0.5,0.0);
		glVertex3f(-0.5,0.5,0.0);
		glVertex3f(0.5,-0.5,0.0);
		glVertex3f(0.5,0.5,0.0);
	glEnd();
	
	glBegin(GL_LINE);
		glVertex3f(-0.5,-0.5,1.0);
		glVertex3f(0.5,-0.5,1.0);
		glVertex3f(0.5,0.5,1.0);
		glVertex3f(-0.5,0.5,1.0);
	glEnd();

	glBegin(GL_LINE);
		glVertex3f(-0.5,-0.5,1.0);
		glVertex3f(-0.5,0.5,1.0);
		glVertex3f(0.5,-0.5,1.0);
		glVertex3f(0.5,0.5,1.0);
	glEnd();

	
/*
	glBegin(GL_LINE);
		glVertex3f(-0.4,-0.4,0.0);
		glVertex3f(0.6,-0.4,0.0);
		glVertex3f(0.6,0.6,0.0);
		glVertex3f(-0.4,0.6,0.0);
	glEnd();

	glBegin(GL_LINE);
		glVertex3f(-0.4,-0.4,0.0);
		glVertex3f(-0.4,0.6,0.0);
		glVertex3f(0.6,-0.4,0.0);
		glVertex3f(0.6,0.6,0.0);
	glEnd();
*/	
	
	glBegin(GL_LINE);
	glEnd();
	
	glFlush();
		
}

int main(int argc, char** argv)
{
	glutInit(&argc,argv);
	glutInitWindowSize(500,500);
	glutCreateWindow("3D");
	glutDisplayFunc(disp);
	glutMainLoop();
	return 0;
}
