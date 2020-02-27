

figure(1)

%Funcion sinuosoidal 
subplot(2,1,1);
x = (0 :0.1: 511);
k1 = 1.51793;
k2 = 10.3482e-3;
f = sin( k1 * exp(k2 * x ));
plot(x,f);
ylim([-1 1])
xlim([0 512])

% Funcion de atenuecion 
subplot(2,1,2);

y = (0 :0.1: 511);
k3 = 1/15;
g = exp(-k3 * y);
plot(y,g)
ylim([0 1])
xlim([0 512])

%Senoidal modulada
% A = y2^T y
A = (transpose(g) * f);


figure(2)

%MTF
imagesc(A)
colormap(gray(256))
%axis('off')
xlim([0 5100])
ylim([0 5100])
%Ditancia entre cada pixel

[x,y]= getpts;

