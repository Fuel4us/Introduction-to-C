void capitalizer(char *vec)
{
    int i = 0;
    do{
        if(vec[i]==' '){
            i++;
           *(vec+i)= *(vec+i) + ('A' - 'a');  
        }
                    i=i+1;


    }while(vec[i]!='\0');
}
