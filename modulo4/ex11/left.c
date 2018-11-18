int rotate_left(int num, int nbits) {
	return (num << nbits) | (num >> ((sizeof(num)) * 8 - nbits) );
}
