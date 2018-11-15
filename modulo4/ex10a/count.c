int count_bits_zero(int x){
int count = 0;
unsigned int y=  x;
while (y) 
{ 
	count += y & 1; 
	y >>= 1; 
} 
return 32-count; 
} 
