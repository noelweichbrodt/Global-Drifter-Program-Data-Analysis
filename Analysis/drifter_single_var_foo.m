%Read in data, clean it up, and create subsets for analysis
[platID,obsTime,obsLat,obsLong,sst,ewCurrent,nsCurrent,eLat,eLong,expNum,wmo,drogue] = ...
textread('Data/2007_k_arc.csv', '%d %s %f %f %f %f %f %f %f %d %d %d', 'delimiter', ',', 'headerlines', 15);
%obsTime freaks out the rest of the matrix for some reason???
arc2007 = [platID obsLat obsLong sst ewCurrent nsCurrent eLat eLong expNum wmo drogue];
arc2007Clean=arc2007;
[cleanrow cleancol] = find(arc2007==999.9999);
arc2007Clean(cleanrow,:) = [];
drogueClean=arc2007Clean(:,11);
length(drogue)-length(drogueClean)
arc2007doff=arc2007Clean(logical(~drogueClean),:);
arc2007don=arc2007Clean(logical(drogueClean),:);
arc2007dondrogue=arc2007Clean(logical(drogueClean),11);
arc2007doffdrogue=arc2007Clean(logical(~drogueClean),11);
arc2007donsst=arc2007Clean(logical(drogueClean),4);
arc2007doffsst=arc2007Clean(logical(~drogueClean),4);

%analysis: standard error on drogue on/off, coefficients on sst, standard
%error on clean vs unclean data on sst.

[droguefit,droguedev,droguestats]=glmfit(arc2007Clean,drogueClean,'normal');
droguefit
droguestats.p
droguestats.coeffcorr
droguestats.se

[drogueonfit,drogueOnDev,drogueonstats]=glmfit(arc2007don,arc2007dondrogue,'normal');
drogueonfit
drogueonstats.p
drogueonstats.coeffcorr
drogueonstats.se

[drogueofffit,drogueOffDev,drogueoffstats]=glmfit(arc2007doff,arc2007doffdrogue,'normal');
drogueofffit
drogueoffstats.p
drogueoffstats.coeffcorr
drogueoffstats.se

[sstDonFit,sstDOnDev,sstDOnStats]=glmfit(arc2007don,arc2007donsst,'normal');
sstDonFit
sstDOnStats.p
sstDOnStats.coeffcorr
sstDOnStats.se

[sstdofffit,sstDOffDev,sstdoffstats]=glmfit(arc2007doff,arc2007doffsst,'normal');
sstdofffit
sstdoffstats.p
sstdoffstats.coeffcorr
sstdoffstats.se

%[b,dev,stats] = glmfit(X,y,distr)
% x = [2100 2300 2500 2700 2900 3100 3300 3500 3700 3900 4100 4300]';
% n = [48 42 31 34 31 21 23 23 21 16 17 21]';
% y = [1 2 0 3 8 8 14 17 19 15 17 21]';
% b = glmfit(x,[y n],'poisson','link','probit');
% yfit = glmval(b, x,'probit','size', n);
% plot(x, y./n,'o',x,yfit./n,'-','LineWidth',2)
