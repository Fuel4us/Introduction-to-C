void frequencies(float *grades, int n, int *freq)
{
    int i=0;
    for(i;i<n;i++){
        *(freq+i) = (int) *(grades+i);
    }
}
