clear;
clc;

ss=0.804;
s1=0.226;
pga=0.332;
pgv=20.605;
fs=1.2;
f1=1.5;
sds=ss*fs;
sd1=s1*f1;
ta=0.070;
tb=0.351;
tl=6;
t1=1:0.1:tl;
sae1= sd1./ t1;
t2=tl:0.1:10;
sae2=(sd1*tl)./(t2).^2;
x=[0,ta ,ta, tb,t1,t2];
y1=[0.4*sds, sds];
y2=[sds,sds];
y3=[sae1];
y4=[sae2];
y=[y1,y2,y3,y4];
plot(x,y,"g","LineWidth",2)
title("Yatay Elastik Tasarım İvme Spektrumu","FontSize",20)
xlabel("T (sn)","FontSize",15,"FontWeight","bold")
ylabel("S_{ae}(T)","FontSize",15,"FontWeight","bold")
grid on
grid minor

