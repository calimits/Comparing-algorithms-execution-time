%Disribución uniforme
%Juego de datos 0001
datos1=randi(100,1,40);
strdatos1=convert_to_string(datos1);

%Juego de datos 0010
datos2=randi(10000,1,800);
strdatos2=convert_to_string(datos2);

%Juego de datos 0011
datos3=randi(10000,1,4000);
strdatos3=convert_to_string(datos3);


%Distribución normal
%Juego de datos 0011
datos4=randn(1,40);
strdatos4=convert_to_string(datos4);

%Juego de datos 0101
datos5=randn(1,800);
strdatos5=convert_to_string(datos5);

%Juego de datos 0110
datos6=randn(1,4000);
strdatos6=convert_to_string(datos6);


%Distribución chicuadrado
%Juego de datos 0111
degrees=5;
datos7=chi2rnd(degrees,1,40);
strdatos7=convert_to_string(datos7);

%Distribución chicuadrado
%Juego de datos 1000
degrees=5;
datos8=chi2rnd(degrees,1,800);
strdatos8=convert_to_string(datos8);

%Distribución chicuadrado
%Juego de datos 1001
degrees=5;
datos9=chi2rnd(degrees,1,4000);
strdatos9=convert_to_string(datos9);

%Distribución chicuadrado
%Juego de datos 1010
tasa=5;
datos10=poissrnd(degrees,1,40);
strdatos10=convert_to_string(datos10);

%Distribución chicuadrado
%Juego de datos 1011
tasa=5;
datos11=poissrnd(degrees,1,800);
strdatos11=convert_to_string(datos11);

%Distribución chicuadrado
%Juego de datos 1100
tasa=5;
datos12=poissrnd(degrees,1,4000);
strdatos12=convert_to_string(datos12);

















