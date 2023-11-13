#ifndef SORT_H
#define SORT_H

template<class T>
void bubblesort(T *array, int size){
    /*El ordenamiento burbuja fue visto en clases así que 
    no habrá comentarios sobre su funcionamiento*/
    int aux;
    for(int i=0; i<size-1; i++){
        for(int j=0; j<size-1-i;j++){
            if (array[j]>array[j+1]){
                aux=array[j];
                array[j]=array[j+1];
                array[j+1]=aux;
            }
        }
    }
}

template<class T>
void merge(T * array, int first, int middle, int last){
    //Variables iteradoras
    int i,j,k;

    //Variables con el número de elementos para dividir elarreglo
    int LeftTotal=middle-first+1;
    int RightTotal=last-middle;

    //Inicializando los arreglos
    T left[LeftTotal];
    T right[RightTotal];

    //Rellenando cada subarreglo
    for(int i=0; i<LeftTotal;i++){
        left[i]=array[first+i];
    }

    for(int j=0; j<RightTotal;j++){
        right[j]=array[middle+1+j];
    }

    i=0;
    j=0;
    k=first;

    //Mezcla de los dos arreglos
    while(i<LeftTotal && j<RightTotal){
        if (left[i]<=right[j]){
            array[k]=left[i];
            i++;
        } else {
            array[k]=right[j];
            j++;
        }
        k++;
    }

    while(j<RightTotal){
        array[k]=right[j];
        j++;
        k++;
    }

    while(i<LeftTotal){
        array[k]=left[i];
        i++;
        k++;
    }

}

template<class T>
void mergesort(T * array,int first, int last){
    if(first<last){
    int middle=(last+first)/2;
    mergesort(array, first, middle);
    mergesort(array, middle+1, last);
    merge(array, first, middle, last);
}
}

template<class T>
void showarray(T *array, int size){
    std::cout<<"Array: "<<std::endl;
    for(int i=0; i<size; i++){
        std::cout<<array[i]<<" ";
    }
    std::cout<<std::endl;
}


#endif