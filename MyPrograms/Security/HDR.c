#include<stdio.h>
#include<conio.h>
#include<string.h>

int main()
{
    char opt;
optsel:
    system("cls");
    printf("***********************   HDR   ***********************\n");
    printf("**               By KR... NjOy ^_^                   **\n");
    printf("*******************************************************\n\n");
    printf("Hide/Unhide/Quit [H/U/Q]:\n");
    opt=getch();
    
    if(opt=='H'||opt=='h')
    {
     char filename[255],hid[271]={"attrib +s +h +r "},cacl[300]={"cacls "};
     printf("Enter the file or folder name to hide : ");
     scanf("%s",filename);
     strcat(hid,filename);
     system(hid);
     strcat(cacl,filename);
     strcat(cacl," /e /c /t /d \"Authenticated Users\"");
     system(cacl);
     printf("\nThe file has been HIDDEN!\nRemember your file name %s which will be needed when unhiding.",filename);
    }
    else{ if(opt=='U'||opt=='u')
    {
     char filename[255],hid[271]={"attrib -s -h -r "},cacl[305]={"cacls "};
     printf("Enter the file or folder name to unhide : ");
     scanf("%s",filename);
     strcat(cacl,filename);
     strcat(cacl," /e /c /t /g \"Authenticated Users\":F");
     system(cacl);
     strcat(hid,filename);
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
