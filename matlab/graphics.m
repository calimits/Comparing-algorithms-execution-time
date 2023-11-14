%Mediciones
bubble_time=[24384 , 6367077 ,169083461, 14846, 6551385, 165971077, 27692, 6049462, 151758846, 14846, 5997461, 151490770];
bubble_time2=[19923, 6089462, 180984846, 16000, 6427616, 179987385, 15384, 5938769, 149735384, 15000, 6050769, 153178846];
bubble_time3=[19462, 6131308, 192082692, 15616, 6458769, 163412230, 16000, 6065846, 156559077, 14769, 6017923, 150635692];
bubble_time4=[38462, 6746385, 180800692, 15769, 6510769, 163324308, 15077, 5987923, 149774770, 14231, 6044000, 151551462];
bubble_time5=[20538, 6605231, 157907923, 15692, 6508692, 163419077, 15461, 6074230, 149860000, 16616, 6021616, 158424231];

merge_time=[9154, 215693, 1239923, 13154, 200846, 1193923, 6461, 200923, 1192000, 6230, 201231, 1203692];
merge_time2=[8615, 211616, 1235615, 11308, 200846, 1233230, 6385, 200923, 1191616, 6461, 200615, 1197770];
merge_time3=[9307, 216231, 1244000, 6462, 200538, 1259077, 6461, 205846, 1196692, 6462, 200000, 1191616];
merge_time4=[9846, 203692, 1201846, 6692, 201231, 1213846, 6461, 200846, 1216923, 6231, 205539, 1237000];
merge_time5=[8923, 207923, 1210154, 6538, 205462, 1220385, 6461, 203077, 1195923, 6154, 200539, 1192385];

total_b=[663361539, 688468539, 687437616, 670835769, 654898539];
total_m=[5686385, 5707384, 5746153, 5714077, 5667385];

for i=1:12
   bubble_prom(i)=(bubble_time(i)+bubble_time2(i)+bubble_time3(i)+bubble_time4(i)+bubble_time(i))/5;
   merge_prom(i)=(merge_time(i)+merge_time2(i)+merge_time3(i)+merge_time4(i)+merge_time5(i))/5;
end

for i=1:12
   bubble_prom(i)=bubble_prom(i)/10000;
   merge_prom(i)=merge_prom(i)/10000;
end


%Graficaciones
%Gráfico de barras Bubble
figure(1)
bar(bubble_prom, 'g');
ax = gca;
ax.XTickLabel = {'Arreglo 1', 'Arreglo 2', 'Arreglo 3', 'Arreglo 4', 'Arreglo 5', 'Arreglo 6', 'Arreglo 7', 'Arreglo 8', 'Arreglo 8', 'Arreglo 10', 'Arreglo 11', 'Arreglo 12'};
xlabel('Arreglos') 
ylabel('Ciclos de reloj') 

figure(2);
%Gráfico de barras merge
bar(merge_prom, 'r');
ax = gca;
ax.XTickLabel = {'Arreglo 1', 'Arreglo 2', 'Arreglo 3', 'Arreglo 4', 'Arreglo 5', 'Arreglo 6', 'Arreglo 7', 'Arreglo 8', 'Arreglo 8', 'Arreglo 10', 'Arreglo 11', 'Arreglo 12'};%
xlabel('Arreglos') 
ylabel('Ciclos de reloj') 
%Gráficos de barras superpuestos
figure(3)

bar(bubble_prom, 'g');
ax = gca;
ax.XTickLabel = {'Arreglo 1', 'Arreglo 2', 'Arreglo 3', 'Arreglo 4', 'Arreglo 5', 'Arreglo 6', 'Arreglo 7', 'Arreglo 8', 'Arreglo 8', 'Arreglo 10', 'Arreglo 11', 'Arreglo 12'};%
hold on

bar(merge_prom, 'r');
ax = gca;
ax.XTickLabel = {'Arreglo 1', 'Arreglo 2', 'Arreglo 3', 'Arreglo 4', 'Arreglo 5', 'Arreglo 6', 'Arreglo 7', 'Arreglo 8', 'Arreglo 8', 'Arreglo 10', 'Arreglo 11', 'Arreglo 12'};%
xlabel('Arreglos') 
ylabel('Ciclos de reloj') 
%Gráficos de pastel
%Gráfica arreglos pequeños
figure(4)
total1=[bubble_time(1), merge_time(1)];
pie3(total1)
%Gráfica arreglos medianos
figure(5)
total2=[bubble_time(2), merge_time(2)];
pie3(total2)
%Gráfica arreglos grandes
figure(6)
total3=[bubble_time(3), merge_time(3)];
pie3(total3)
%Gráfica total
figure(7)
total=[total_b(1), total_m(1)];
pie3(total)

%Gráficas de funciones
totalfb=[bubble_time(4), bubble_time(5), bubble_time(6)];
totalfm=[merge_time(4), merge_time(5), merge_time(6)];

x=[1,2,3];
figure(8)
plot(x,totalfb);
xlabel('Nro de medicion') 
ylabel('Ciclos de reloj') 

%Convirtiendo en cuadrática
figure(9)
x2=linspace(1,3,4).^2;
y2=linspace(totalfb(1), totalfb(3),4).^2;
plot(x2,y2)
xlabel('Nro de medicion') 
ylabel('Ciclos de reloj') 

%Convirtiendo en cuadrática
figure(10)
x2=linspace(1,3,5000).^2;
y2=linspace(totalfb(1), totalfb(3),5000).^2;
plot(x2,y2)
xlabel('Nro de medicion') 
ylabel('Ciclos de reloj') 

%Gráfica de tiempo contra cant. de elementos
figure(11)
x3=[40, 800, 4000];
plot(x3,totalfb)

hold on 
plot(x3,totalfm)
xlabel('Cantidad de elementos') 
ylabel('Ciclos de reloj') 

%Última gráfica
figure(12)
x4=linspace(40, 4000, 5000);
plot(x4, y2)

hold on
y5=log(linspace(totalfm(1), totalfm(3), 5000)).*linspace(totalfm(1), totalfm(3), 5000);
plot(x4,y5)
xlabel('Cantidad de elementos') 
ylabel('Ciclos de reloj') 