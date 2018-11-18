

int sum_vec(int *vec)
{
    int i = 1;
    int b = 0;
    for(i;i<vec[0];i++)
    {
        if(*(vec+i)%2 == 0) {
            b=b+*(vec+i);
    }
    }

    return b;
}
