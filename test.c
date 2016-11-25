//Braedan Robinson 10188414
//Luisa Aimoli 10169687

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>

int main() {
FILE *fp;
char buff[255];
int i;

fp = fopen("filename", "r+");//read and overwrite
while (1) {
  fgets(buff, 255, fp);//gets character array of lines
  if (feof(fp)) { //end of file
    break;
   }
   for (i=0; i<strlen(buff); i++) { //for each chr in buff
    if (isalpha(buff[i])) {
    if(i=0 || buff[i-1] == ' ') { //first word or after a space
      fprintf(fp, "%c", toupper(buff[i]));
      i++;
     }
     }
   }
 }
 fclose(fp);
 return (0);
 }
