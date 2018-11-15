void changes(int* a){
	
	unsigned int n=15;
       
        n = n<<8;
	unsigned int z = *a & n;
        z = z>>8;
        if (z>7)
		*a= *a ^ n;
        
} 

