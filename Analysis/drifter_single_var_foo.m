[platID,obsTime,obsLat,obsLong,sst,ewCurrent,nsCurrent,eLat,eLong,expNum,wmo,drogue] = ...
textread('Data/2007_k_arc.csv', '%d %s %f %f %f %f %f %f %f %d %d %d', 'delimiter', ',', 'headerlines', 15);
%obsTime freaks out the rest of the matrix for some reason???
arc2007 = [platID obsLat obsLong sst ewCurrent nsCurrent eLat eLong expNum wmo drogue];
[droguefit,dev,droguestats]=glmfit(arc2007,drogue,'poisson');
droguestats
droguefit
droguestats.p
%[b,dev,stats] = glmfit(X,y,distr)
% x = [2100 2300 2500 2700 2900 3100 3300 3500 3700 3900 4100 4300]';
% n = [48 42 31 34 31 21 23 23 21 16 17 21]';
% y = [1 2 0 3 8 8 14 17 19 15 17 21]';
% b = glmfit(x,[y n],'poisson','link','probit');
% yfit = glmval(b, x,'probit','size', n);
% plot(x, y./n,'o',x,yfit./n,'-','LineWidth',2)
