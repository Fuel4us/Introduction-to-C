int f(int i, int j , int h){
if (i == j)
h = i - j + 1;
else
h = i + j -1;
return h;
}

int f2(int i , int j , int h){
if (i > j)
i = i - 1;
else
j = j + 1;
h = j * i;
return h;
}

int f3(int i , int j, int h, int g , int r){
if (i >= j) {
h = i * j;
g = i + 1;
}
else {
h = i + j;
g = i + j + 2;
}
r = g / h;
return r;
}

int f4(int i , int j , int h){
if (i + j < 10)
h = 4 * i * i;
else
h = j * j / 3;
return h;
}
