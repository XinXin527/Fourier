m=100;
n=100;
t=zeros(100,100);
for i=40:1:70
    for j=20:1:50
        t(i,j)=1;
    end
end
figure(1);
imagesc(t);
hold on;
T=zeros(100,100);
for p1=1:1:100
    pp1=p1-1;
    for p2=1:1:100
        pp2=p2-1;
    for q1=1:1:100
        qq1=q1-1;
        for q2=1:1:100
            qq2=q2-1;
    T(p1,p2)=T(p1,p2)+t(q1,q2)*exp(-1j*2*pi*pp1*qq1/100)*exp(-1j*2*pi*pp2*qq2/100);
    end
    end
    end
end
figure(2);
imagesc(abs(T));
title('∂˛Œ¨¿Î…¢∏µ¿Ô“∂±‰ªª');
hold on;
figure(3);
imagesc(abs(fft2(t)));
title('fft2');
tt=zeros(100,100);
for p1=1:1:100
    pp1=p1-1;
    for p2=1:1:100
        pp2=p2-1;
    for q1=1:1:100
        qq1=q1-1;
        for q2=1:1:100
            qq2=q2-1;
    tt(p1,p2)=tt(p1,p2)+(1/100)*(1/100)*T(q1,q2)*exp(1j*2*pi*pp1*qq1/100)*exp(1j*2*pi*pp2*qq2/100);
    end
    end
    end
end
figure(4);
imagesc(abs(tt));
title('∂˛Œ¨¿Î…¢∏µ¿Ô“∂ƒÊ±‰ªª');
hold on;
figure(5);
imagesc(abs(ifft2(T)));
title('ifft2');