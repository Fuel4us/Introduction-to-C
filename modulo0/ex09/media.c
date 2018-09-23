// made by my colleague
double media(double n1, double n2)
{
return (n1+n2)/2;
}
double average_vetor (double v [], int n){
int i ;
double total = 0;
for(i=0;i<n;i++){
total=total + v[i];
}
return total/n;
}

// end of ex8

int g_n = 2;
double g_v[100] = {2,1,3,8,9,10};

double media_vector_g(){
	int i = 0;
	double soma = 0;
	while(i<g_n){
		soma+=g_v[i];
		i++;
		}
	return soma/g_n;
	}
