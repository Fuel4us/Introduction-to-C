int activate_bit(int* ptr, int pos){
        int y = *ptr;
	*ptr |= 1ul << pos; 
        if(y!=*ptr)
		return 1;
	else return 0;
} 

