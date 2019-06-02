d=10000;
f=zeros(10000,1);
t=zeros(10000,1);
for i=1:1:10000
    t(i,1)=2.25*(i-1)/(d-1);
    for k=0:1:100
        f(i,1)=f(i,1)+(4/pi)*(1/(2*k+1))*sin(2*pi*(2*k+1)*t(i,1));
    end
end
plot(t,f);
xlim([0,2.25]);
ylim([-1.5,1.5]);