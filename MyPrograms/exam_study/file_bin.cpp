#include<fstream.h>
#include<iostream.h>
#include<conio.h>

class stud
{
      
      char name[20];
      
      public:
             int roll;
             void getdata();
             void showdata();
};

void stud::getdata()
{
   cout<<"Roll ";
   cin>>roll;
   cout<<"Name ";
   cin>>name;
}
void stud::showdata()
{
   cout<<"\nRoll ";
   cout<<roll;
   cout<<"\nName ";
   cout<<name;
}

int main()
{
	stud s1;
	int roll,i=0,fptr;
	ofstream fout;
	ifstream fin;
	char opt='y';
	
    /*
    fout.open("stud.dat",ios::app);
	s1.getdata();
	fout.write((char*)&s1,sizeof(stud));
	fout.close();
	*/
	
	fin.open("stud.dat",ios::in);
	
	cout<<"Enter roll ";
	cin>>roll;
	
	fout.open("temp",ios::out);
	
	while(!fin.eof())
	{
    fin.read((char*)&s1,sizeof(stud));
    if(s1.roll!=roll)
    {
    fout.write((char*)&s1,sizeof(stud));
    }
    }
    fin.close();
    fout.close();
    
    
    remove("stud.dat");
    rename("temp","stud.dat");
    
    fin.open("stud.dat",ios::in);
    fin.seekg(0);
    while(!fin.eof())
	{
    fin.read((char*)&s1,sizeof(stud));
    s1.showdata();
    }
    
    fin.close();
	getch();
}
