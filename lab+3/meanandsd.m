clear all;
s=0;
for i=1:10000
y=1+6.*rand(1,1);
x=floor(y);
s=s+x;
end

mean= s/10000;

ss=0;
for i=1:10000
y=1+6.*rand(1,1);
x=floor(y);
ss=ss+x^2;
end

L=ss/10000;
A=L-mean;
SD=A.^(1/2)
