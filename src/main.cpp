#include <iostream>
#include <chrono>

#include "sort.h"
#include "juegosDeDatos.h"
#include "timerfunction.h"

using namespace std::chrono;
using std::cout;
using std::endl;

int main(){
    //Declarando un arreglo de punteros para tener todos los juegos de datos
    //en un mismo lugar
    double * datos[12];
    datos[0]=juego1;
    datos[1]=juego2;
    datos[2]=juego3;
    datos[3]=juego4;
    datos[4]=juego5;
    datos[5]=juegos6;
    datos[6]=juego7;
    datos[7]=juego8;
    datos[8]=juego9;
    datos[9]=juego10;
    datos[10]=juego11;
    datos[11]=juego12;

    //Declarando arreglos para guardar los ciclos de reloj
    unsigned long long totalb[12];
    unsigned long long totalm[12];
    unsigned long long totalt[2];

    //Declarando puntos de inicio y final para medir los ciclos de reloj
    high_resolution_clock::time_point t0, t1;

    //Midiendo método burbuja
    t0=high_resolution_clock::now();
    timeOneByOne(totalb, datos, true);
    t1=high_resolution_clock::now();
    totalt[0]=high_resolution_clock::duration(t1-t0).count();

    //Midiendo método de mezcla
    t0=high_resolution_clock::now();
    timeOneByOne(totalm, datos, false);
    t1=high_resolution_clock::now();
    totalt[1]=high_resolution_clock::duration(t1-t0).count();


    //Imprimiendo los tiempos de ejecución 
    cout<<"Bubble sort execution time (one by one): "<<endl;
    showarray(totalb,12);

    cout<<"Merge sort execution time (one by one): "<<endl;
    showarray(totalm,12);

    cout<<"Bubble sort and Merge sort total execution time  "<<endl;
    showarray(totalt,2);

    return 0;
}

