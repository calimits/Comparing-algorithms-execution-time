
#include <chrono>

using namespace std::chrono;

void timeOneByOne(unsigned long long *array, double ** datos, bool bubble){
    high_resolution_clock::time_point t0, t1;
    for(int i=0;i<12;i++){
        if(i%3==0){
            t0=high_resolution_clock::now();
            if(bubble){
                bubblesort(datos[i], 40);
            } else {
                mergesort(datos[i],0,39);
            }
            t1=high_resolution_clock::now();
            array[i]=high_resolution_clock::duration(t1-t0).count();
        } else if(i==1 || (i-1)%3==0){
            t0=high_resolution_clock::now();
            if(bubble){
                bubblesort(datos[i], 800);
            } else {
                mergesort(datos[i],0,799);
            }
            t1=high_resolution_clock::now();
            array[i]=high_resolution_clock::duration(t1-t0).count();
        } else {
            t0=high_resolution_clock::now();
            if(bubble){
                bubblesort(datos[i], 4000);
            } else {
                mergesort(datos[i],0,3999);
            }
            t1=high_resolution_clock::now();
            array[i]=high_resolution_clock::duration(t1-t0).count();
        }
    }
}