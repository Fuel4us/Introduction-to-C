int join_bits(int a, int b, int pos){
	int f = -1;
	unsigned int i = f;

        
	i= i>>(31-pos);
	
        a = a & i;
        b = b & ~i;

	


        return a+b;
} 


