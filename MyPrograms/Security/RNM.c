#include<stdio.h>
#include<conio.h>
#include<string.h>

int main()
{
    char opt;
optsel:
    system("cls");
    printf("***********************   RNM   ***********************\n");
    printf("**               By KR... NjOy ^_^                   **\n");
    printf("*******************************************************\n\n");
    printf("Rename/Quit [R/Q]:\n");
    opt=getch();
    
    if(opt=='H'||opt=='h')
    {
     char filename[255],hid[271]={"ren "};
     printf("Enter the file or folder name to rename : ");
     scanf("%s",filename);
     strcat(hid,filename);
     strcat(hid," Å");
     system(hid);
     printf("\nThe file has been Renamed!\n");
    }
    else{ if(opt=='U'||opt=='u')
    {
     char filename[255],hid[271]={"attrib -s -h -r "};
     printf("Enter the file or folder name to unhide : ");
     scanf("%s",filename);
     system(hid);
     }
     else if(opt=='Q'||opt=='q')
    {
     return 0;
     }
    else
    {
        goto optsel;
    }}
    printf("\n");
    system("pause");
    return 0;
}
