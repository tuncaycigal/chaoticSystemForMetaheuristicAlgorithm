%_________________________________________________________________________%
% Modified for                                                            %
% Continuous time chaotic system on Whale Optimization Algorithm          %
%                                                                         %
%  Developed in MATLAB R2011b(7.13)                                       %
%                                                                         %
%  programmer: Seyedali Mirjalili                                         %
% lb is the lower bound: lb=[lb_1,lb_2,...,lb_d]
% up is the uppper bound: ub=[ub_1,ub_2,...,ub_d]
% dim is the number of variables (dimension of the problem)
function [lb,ub,dim,fobj] = Get_Functions_details3(F)
switch F
    case 'F1'
        fobj = @F1;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F2'
        fobj = @F2;
        lb=-10;
        ub=10;
        dim=30;
        
    case 'F3'
        fobj = @F3;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F4'
        fobj = @F4;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F5'
        fobj = @F5;
        lb=-30;
        ub=30;
        dim=30;
        
    case 'F6'
        fobj = @F6;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F7'
        fobj = @F7;
        lb=-1.28;
        ub=1.28;
        dim=30;
        
    case 'F8'
        fobj = @F8;
        lb=-500;
        ub=500;
        dim=30;
        
    case 'F9'
        fobj = @F9;
        lb=-5.12;
        ub=5.12;
        dim=30;
        
    case 'F10'
        fobj = @F10;
        lb=-32;
        ub=32;
        dim=30;
        
    case 'F11'
        fobj = @F11;
        lb=-600;
        ub=600;
        dim=30;
        
    case 'F12'
        fobj = @F12;
        lb=-50;
        ub=50;
        dim=30;
        
    case 'F13'
        fobj = @F13;
        lb=-50;
        ub=50;
        dim=30;
        
    case 'F14'
        fobj = @F14;
        lb=-65.536;
        ub=65.536;
        dim=2;
        
    case 'F15'
        fobj = @F15;
        lb=-5;
        ub=5;
        dim=4;
        
    case 'F16'
        fobj = @F16;
        lb=-5;
        ub=5;
        dim=2;
        
    case 'F17'
        fobj = @F17;
        lb=[-5,0];
        ub=[10,15];
        dim=2;
        
    case 'F18'
        fobj = @F18;
        lb=-2;
        ub=2;
        dim=2;
        
    case 'F19'
        fobj = @F19;
        lb=0;
        ub=1;
        dim=3;
        
    case 'F20'
        fobj = @F20;
        lb=0;
        ub=1;
        dim=6;
        
    case 'F21'
        fobj = @F21;
        lb=0;
        ub=10;
        dim=4;
        
    case 'F22'
        fobj = @F22;
        lb=0;
        ub=10;
        dim=4;
        
    case 'F23'
        fobj = @F23;
        lb=0;
        ub=10;
        dim=4;
        
    case 'G1'
        fobj = @G1;
        lb=0;
        ub=5;
        dim=1;
        
    case 'G2'
        fobj = @G2;
        lb=0;
        ub=5;
        dim=3;
        
    case 'G3'
        fobj = @G3;
        lb=-5;
        ub=5;
        dim=2;
        
    case 'G5'
        fobj = @G5;
        lb=[0 0];
        ub=[40000 1];
        dim=2;
        
    case 'F24'
        fobj = @F24;
        lb=[0.0625 0.0625 10 10];
        ub=[99*0.0625 99*0.0625 200 200];
        dim=4;
        
    case 'F25'
        fobj = @F25;
        lb=[0.05 0.25 2];
        ub=[2 1.3 15];
        dim=3;
        
    case 'F26'
        fobj = @F26;
        lb=[0.1 0.1 0.1 0.1];
        ub=[2 10 10 2];
        dim=4;
end

end

% F1

function o = F1(x)
o=sum(x.^2);
end

% F2

function o = F2(x)
o=sum(abs(x))+prod(abs(x));
end

% F3

function o = F3(x)
dim=size(x,2);
o=0;
for i=1:dim
    o=o+sum(x(1:i))^2;
end
end

% F4

function o = F4(x)
o=max(abs(x));
end

% F5

function o = F5(x)
dim=size(x,2);
o=sum(100*(x(2:dim)-(x(1:dim-1).^2)).^2+(x(1:dim-1)-1).^2);
end

% F6

function o = F6(x)
o=sum(abs((x+.5)).^2);
end

% F7

function o = F7(x)
dim=size(x,2);
o=sum([1:dim].*(x.^4))+rand;
end

% F8

function o = F8(x)
o=sum(-x.*sin(sqrt(abs(x))));
end

% F9

function o = F9(x)
dim=size(x,2);
o=sum(x.^2-10*cos(2*pi.*x))+10*dim;
end

% F10

function o = F10(x)
dim=size(x,2);
o=-20*exp(-.2*sqrt(sum(x.^2)/dim))-exp(sum(cos(2*pi.*x))/dim)+20+exp(1);
end

% F11

function o = F11(x)
dim=size(x,2);
o=sum(x.^2)/4000-prod(cos(x./sqrt([1:dim])))+1;
end

% F12

function o = F12(x)
dim=size(x,2);
o=(pi/dim)*(10*((sin(pi*(1+(x(1)+1)/4)))^2)+sum((((x(1:dim-1)+1)./4).^2).*...
    (1+10.*((sin(pi.*(1+(x(2:dim)+1)./4)))).^2))+((x(dim)+1)/4)^2)+sum(Ufun(x,10,100,4));
end

% F13

function o = F13(x)
dim=size(x,2);
o=.1*((sin(3*pi*x(1)))^2+sum((x(1:dim-1)-1).^2.*(1+(sin(3.*pi.*x(2:dim))).^2))+...
    ((x(dim)-1)^2)*(1+(sin(2*pi*x(dim)))^2))+sum(Ufun(x,5,100,4));
end

% F14

function o = F14(x)
aS=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;,...
    -32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32];

for j=1:25
    bS(j)=sum((x'-aS(:,j)).^6);
end
o=(1/500+sum(1./([1:25]+bS))).^(-1);
end

% F15

function o = F15(x)
aK=[.1957 .1947 .1735 .16 .0844 .0627 .0456 .0342 .0323 .0235 .0246];
bK=[.25 .5 1 2 4 6 8 10 12 14 16];bK=1./bK;
o=sum((aK-((x(1).*(bK.^2+x(2).*bK))./(bK.^2+x(3).*bK+x(4)))).^2);
end

% F16

function o = F16(x)
o=4*(x(1)^2)-2.1*(x(1)^4)+(x(1)^6)/3+x(1)*x(2)-4*(x(2)^2)+4*(x(2)^4);
end

% F17

function o = F17(x)
o=(x(2)-(x(1)^2)*5.1/(4*(pi^2))+5/pi*x(1)-6)^2+10*(1-1/(8*pi))*cos(x(1))+10;
end

% F18

function o = F18(x)
o=(1+(x(1)+x(2)+1)^2*(19-14*x(1)+3*(x(1)^2)-14*x(2)+6*x(1)*x(2)+3*x(2)^2))*...
    (30+(2*x(1)-3*x(2))^2*(18-32*x(1)+12*(x(1)^2)+48*x(2)-36*x(1)*x(2)+27*(x(2)^2)));
end

% F19

function o = F19(x)
aH=[3 10 30;.1 10 35;3 10 30;.1 10 35];cH=[1 1.2 3 3.2];
pH=[.3689 .117 .2673;.4699 .4387 .747;.1091 .8732 .5547;.03815 .5743 .8828];
o=0;
for i=1:4
    o=o-cH(i)*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2))));
end
end

% F20

function o = F20(x)
aH=[10 3 17 3.5 1.7 8;.05 10 17 .1 8 14;3 3.5 1.7 10 17 8;17 8 .05 10 .1 14];
cH=[1 1.2 3 3.2];
pH=[.1312 .1696 .5569 .0124 .8283 .5886;.2329 .4135 .8307 .3736 .1004 .9991;...
    .2348 .1415 .3522 .2883 .3047 .6650;.4047 .8828 .8732 .5743 .1091 .0381];
o=0;
for i=1:4
    o=o-cH(i)*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2))));
end
end

% F21

function o = F21(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

o=0;
for i=1:5
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end

% F22

function o = F22(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

o=0;
for i=1:7
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end

% F23

function o = F23(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

o=0;
for i=1:10
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end

function o=Ufun(x,a,k,m)
o=k.*((x-a).^m).*(x>a)+k.*((-x-a).^m).*(x<(-a));
end

% G1 min-max
function o = G1(x)
% Çok büyük sayýdan çýkarma yöntemi
% o=10000000-(x^2-x);

% -1 ile çarpma yöntemi
o=-1*(x^2-x);

end

% Pressure Vessel design optimization problem
function o = F24(x)
k1 = -x(1)+0.0193*x(3);
k2 = -x(2)+0.00954*x(3);
k3 = -pi*x(3)^2*x(4)-(4/3)*pi*x(3)^3+1296000;
k4 = x(4)-240;
c=9999999999999;
    o=0.6224*x(1)*x(3)*x(4)+1.7781*x(2)*x(3)^2+3.1661*x(1)^2*x(4)+19.84*x(1)^2*x(3)+c*((max(0,k1))^2+(max(0,k2))^2+(max(0,k3))^2+(max(0,k4))^2);

end

%Tension/compression spring design optimization problem
function o = F25(x)
k1 = 1-(x(2)^3*x(3))/(71785*x(1)^4);
k2 = (4*x(2)^2-x(1)*x(2))/(12566*x(1)^3*(x(2)-x(1)))+1/(5108*x(1)^2)-1;
k3 = 1-140.45*x(1)/(x(3)*x(2)^2);
k4 = (x(1)+x(2))/1.5-1;

c=999999999999;
    o=x(1)^2*x(2)*(x(3)+2)+c*((max(0,k1))^2+(max(0,k2))^2+(max(0,k3))^2+(max(0,k4))^2);

end

% Welded beam design optimization problem
function o = F26(x)
P = 6000; L = 14; E = 30e+6; G = 12e+6;
t_max = 13600; s_max = 30000; d_max = 0.25;
M = P*(L+x(2)/2); R = sqrt(0.25*(x(2)^2+(x(1)+x(3))^2));
J = 2/sqrt(2)*x(1)*x(2)*(x(2)^2/12+0.25*(x(1)+x(3))^2);
P_c = (4.013*E/(6*L^2))*x(3)*x(4)^3*(1-0.25*x(3)*sqrt(E/G)/L);
t1 = P/(sqrt(2)*x(1)*x(2)); t2 = M*R/J;
t = sqrt(t1^2+t1*t2*x(2)/R+t2^2);
s = 6*P*L/(x(4)*x(3)^2);
d = 4*P*L^3/(E*x(4)*x(3)^3);

k1 = t-t_max;
k2 = s-s_max;
k3 = x(1)-x(4);
k4 = 0.10471*x(1)^2+0.04811*x(3)*x(4)*(14.0+x(2))-5.0;
k5 = d-d_max;
k6 = P-P_c;

c=1000000000000;
  
o=1.10471*x(1)^2*x(2)+0.04811*x(3)*x(4)*(14.0+x(2))+c*((max(0,k1))^2+(max(0,k2))^2+(max(0,k3))^2+(max(0,k4))^2+(max(0,k5))^2+(max(0,k6))^2);
end

