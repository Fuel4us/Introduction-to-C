void frequencies(float *grades, int n, int *freq)
{
    int i=0;
    int j=0;
    int a=0;
    for(j;j<=20;j++){
        a=0;
        i=0;
    for(i;i<n;i++){
        if((int) *(grades+i) == j)
        a++;
    }
        *(freq+j)=a;
    }
}
