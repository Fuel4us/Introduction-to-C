#include <limits.h>
int add_ovf(int* result, int a, int b){
    if ((b > 0 && a > INT_MAX - b) ||(b < 0 && a < INT_MIN - b)) //é necessario calcular se a conta vai dar overflow antes de realizar a conta. Int_max da o maior inteiro possivel na maquina em utilizaçao
	{
    return  -1;
	}
    else {
    *result = a+b;
    return 0;
    }
}

