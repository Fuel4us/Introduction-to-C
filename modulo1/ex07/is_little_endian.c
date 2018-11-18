
int is_little_endian()
{
    unsigned int i = 1;
    char *c = (char*)&i; //char é so 1 byte ao guardar o primeiro byte de um apontador de inteiro o primeiro byte é 1 ou 0
    if (*c) //retorna 1 se for little endian
	{
       return 1;
}
    else        //retorn 0 se for big endian
       {
       return 0;
}
}
