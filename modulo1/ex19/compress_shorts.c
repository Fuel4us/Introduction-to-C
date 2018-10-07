 void compress_shorts(short* shorts, int n_shorts, int* integers) {
     int i = 0;
     int j = 0;
     int a=0;
     int resto=0;
     int power=0;
     int potencia = 1;
     for(i;i<n_shorts;i=i+2){
        resto=*(shorts+i+1);
        j=0;
        potencia =1;

         do{
             resto=resto/10;  //calcula quantos digitos tem o segundo short
             if(resto!=0);
             power++;
         }while(resto!=0);
         for(j;j<power;j++){
             potencia = potencia*10;  //cria uma potencia com o numero de digitos do segundo short de base 10
         }
         *(integers+a)=*(shorts+i)*potencia+*(shorts+i+1); //multiplica o primmeiro short pela potencia do numero de digitos do segundo short de base 10 e soma o segundo short em um unico int
         a++;
         power=0;
     }
 }
