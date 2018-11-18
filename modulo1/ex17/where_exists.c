 char* where_exists(char* str1, char* str2) 
 {
     int i=0;
     int j=0;
     int d=0;
     char* c;
     do{
         if(*(str1+i)==*(str2+j)){ //compara a letra atual a primeira letra da palavra pretendida
             c=(str1+i); //guarda endereço de onde encontrou a primeira letra (sempre que a encontra)
             d=i;
         do{
             j++;
             d++;
             if(*(str2+j)=='\0') //verifica se ja chegou ao final da palavra pretendida
             return c;
             
         }while(*(str1+d)==*(str2+j)); //enquanto as letras do vetor forem iguais as letras da palavra pretendida
         }
         j=0;
         i++;
     }while(*(str1+i)!='\0');
     return 0; //erro ao declarar null
 }
