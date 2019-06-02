l=100;
t=zeros(100,1);
for i=40:1:70
    t(i,1)=1;
end
figure(1);
plot(t);
xlim([0,100]);
ylim([0,2]);
hold on;
T=zeros(100,1);
for p=1:1:100
    pp=p-1;
    for q=1:1:100
        qq=q-1;
    T(p,1)=T(p,1)+t(q,1)*exp(-1j*2*pi*pp*qq/100);
    end
end
figure(2);
plot(abs(T));
hold on;
plot(abs(fft(t)),'ro');
legend('¿Î…¢∏µ¿Ô“∂±‰ªª','fft');
tt=zeros(100,1);
for p=1:1:100
    pp=p-1;
    for q=1:1:100
        qq=q-1;
    tt(p,1)=tt(p,1)+(1/100)*T(q,1)*exp(1j*2*pi*pp*qq/100);
    end
end
figure(3);
plot(abs(tt));
hold on;
plot(abs(ifft(T)),'ko');
legend('¿Î…¢∏µ¿Ô“∂ƒÊ±‰ªª','ifft');