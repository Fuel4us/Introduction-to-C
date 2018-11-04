#include <CppUTest/TestHarness.h>

extern "C"
{
#include <stdio.h>
#include <memory.h>

#include <string.h>
  
 #include "asm.h"
 char * ptr1;
 
} 

//START: testGroup
TEST_GROUP(encrypt)
{
    char output[100];
    const char * expected;
    int  expected_int; 
    void setup()
    {
        memset(output, 0xaa, sizeof output);
        expected = "";
    }
    void teardown()
    {
    }
    void expect(const char * s, int res)
    {
        expected = s;
        expected_int = res; 		

	}
    void given(const char * str)
    { 
	int result;   
	strcpy(output,str); 
    	ptr1=output; 	
    	result=encrypt(); 	
	LONGS_EQUAL(expected_int,result); 
        STRCMP_EQUAL(expected, output);
        BYTES_EQUAL(0xaa, output[strlen(expected) + 1]);
    }
};
//END: testGroup


TEST(encrypt, Hex)
{
    expect("jgz",3);
    given("hex");
}

TEST(encrypt, Abcd)
{
    expect("CDEF a",4);
    given("ABCD a");
}

TEST(encrypt, Abba)
{
    expect(" adda ",2);
    given(" abba ");
}



TEST(encrypt, OnlySpaces)
{
    expect("      ",0);
    given("      ");
}

TEST(encrypt, Null_String)
{
    expect("",0);
    given("");
}





//END: RefactoredTests


