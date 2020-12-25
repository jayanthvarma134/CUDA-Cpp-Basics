#include<stdio.h>
#include<stdlib.h>

int const num = 512;

int * vector_add(int *a, int *b, int *c){
    for(int idx =0; idx < num; idx++){
        c[idx] = a[idx] + b[idx];
    }

    return c;
}

void vector_print(int *a, int *b, int *c){
    for(int idx =0; idx < num; idx++){
        printf("\n %d + %d = %d", a[idx], b[idx], c[idx] );
    }

}

void vector_fill( int *data){
    for(int idx =0; idx < num; idx++){
        data[idx] = idx;
    }
}


int main(){
    int *a, *b, *c;
    int size = num * sizeof(int);

    a = (int *)malloc(size);
    vector_fill(a);

    b = (int *)malloc(size);
    vector_fill(b);

    c = (int *)malloc(size);

    c = vector_add(a, b, c);

    vector_print(a, b, c);

    free(a); free(b); free(c);

    return 0;
}

