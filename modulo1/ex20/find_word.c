//initial_addr permite começar a procurar em uma determinada posiçao do vetor

char* find_word(char* str, char* word, char* initial_addr)
 {
     int i=0;
     int j=0;
     int d=0;
     char* c;
     do{
         if(tolower(*(initial_addr+i))==tolower(*(word+j))){ //seria possivel fazer este processo manualmente confirmando se a letra era maiuscula e caso fosse subtraindo por 'a'-'A'
             c=(initial_addr+i);
             d=i;
         do{
             j++;
             d++;
             if(*(word+j)=='\0') //verifica se ja chegou ao fim da palavra pretendida
             return c;
             
         }while(tolower(*(initial_addr+d))==tolower(*(word+j)));  //compara letra a letra o vetor com a palavra pretendida
         }
         j=0;
         i++;
     }while(*(initial_addr+i)!='\0'); //percorre o vetor
     return 0;
 }
