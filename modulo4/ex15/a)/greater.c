int greater_date(unsigned int date1, unsigned int date2){

		int year1 = date1 << 16;
		int year2 = date2 << 16;

		if(year1 > year2){
			return date1;
		}
		if(year2 > year1){
			return date2;
		}

		int month_year1 = date1 << 7;
		int month_year2 = date2 << 7;

		if (month_year1 > month_year2){
			return date1;
		}
		if (month_year1 < month_year2){
				return date2;
		}

		if (date1 > date2){
			return date1;
		}
    
		if(date2 > date1){
			return date2;
		}

    return 0;

}
