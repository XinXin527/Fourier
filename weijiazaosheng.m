clear;
A=zeros(1000,1);
A(200,1)=1;
A(230,1)=1;
A(300,1)=1;
A(350,1)=1;
A(400,1)=1;
A(650,1)=1;
figure(1);
plot(A);
title('0—1序列');
Ca=zeros(1000,1);
for j=1:1:1000
    Ca(j,1)=2*exp(-0.005*j);
end
figure(2);
plot(Ca);
title('指数下降函数');
Ah=zeros(1999,1000);
for p=1:1:length(A)
    for q=p:1:p+length(Ca)-1
        Ah(q,p)=Ca(q-p+1,1);
    end
end
Y=zeros(1999,1);
Y=Ah*A;
figure(3);
plot(Y);
title('卷积结果');
hc=zeros(1999,1);
for i=1:1:1000
    hc(i,1)=Ca(i,1);
end
AA=ifft((fft(Y))./(fft(hc)));
figure(4);
plot(AA);
xlim([0,1000]);
ylim([0,1]);
title('解析出的动作电位');