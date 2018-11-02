#include <CppUTest/TestHarness.h>

extern "C"
{
#include <stdio.h>
#include <memory.h> 
#include <string.h> 
#include "asm.h"   	
int  * ptrvec;  
int num; 
}

//START: testGroup
TEST_GROUP(vec_add2)
{
    int test_vec[100];
    int *expected;
    void setup()
    {
        memset(test_vec, 0xaa, sizeof test_vec);
        expected = NULL; 
	ptrvec=test_vec; 
    }
    void teardown()
    {
    }
    void expect(int * exp)
    {
        expected = exp;
    }
    void given(int * vec, int num_elem)
    { 
	memcpy(test_vec,vec,num_elem*sizeof(int)); 
	num=num_elem; 
	vec_add2(); 
	MEMCMP_EQUAL(expected,test_vec,num_elem*sizeof(int)) ; 
        BYTES_EQUAL(0xaa, test_vec[num_elem]& 0xff);
    }
};
//END: testGroup

TEST(vec_add2, NullVector)
{
    int e[]={0}; 
    expect(e); 
    int v[]={0}; 
    given(v,0);
}

TEST(vec_add2, One)
{
    int e[]={3}; 
    expect(e);
    int v[]={1}; 
    given(v,1);
}


TEST(vec_add2,Zero)
{
    int e[]={3,2,1}; 
    expect(e);
    int v[]={1,0,-1}; 
    given(v,3);
}


TEST(vec_add2,MinusThree)
{
    int e[]={0,0,0}; 
    expect(e);
    int v[]={-2,-2,-2}; 
    given(v,3);
}

TEST(vec_add2,Ten)
{
    int e[]={3,3,3,3,3,3,3,3,4}; 
    expect(e);
    int v[]={1,1,1,1,1,1,1,1,2}; 
    given(v,9);
}




