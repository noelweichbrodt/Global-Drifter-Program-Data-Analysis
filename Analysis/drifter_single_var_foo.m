%Read in data
[platID,obsTime,obsLat,obsLong,sst,ewCurrent,nsCurrent,eLat,eLong,expNum,wmo,drogue] = ...
textread('Data/2007_k_arc.csv', '%d %s %f %f %f %f %f %f %f %d %d %d', 'delimiter', ',', 'headerlines', 15);
[platID2008,obsTime2008,obsLat2008,obsLong2008,sst2008,ewCurrent2008,nsCurrent2008,eLat2008,eLong2008,expNum2008,wmo2008,drogue2008] = ...
textread('Data/2008_k_arc.csv', '%d %s %f %f %f %f %f %f %f %d %d %d', 'delimiter', ',', 'headerlines', 15);
%obsTime freaks out the rest of the matrix for some reason???
arc2007 = [platID obsLat obsLong sst ewCurrent nsCurrent eLat eLong expNum wmo drogue];
arc2008 = [platID2008 obsLat2008 obsLong2008 sst2008 ewCurrent2008 nsCurrent2008 eLat2008 eLong2008 expNum2008 wmo2008 drogue2008];

%Clean up data using list-wise deletion.
arc2007Clean=arc2007;
[cleanrow cleancol] = find(arc2007==999.9999);
arc2007Clean(cleanrow,:) = [];
arc2008Clean=arc2008;
[cleanrow2008 cleancol2008] = find(arc2008==999.9999);
arc2008Clean(cleanrow2008,:) = [];

%Create subsets of data for analysis
drogueClean=arc2007Clean(:,11);
drogueRaw=arc2007(:,11);
length(drogue)-length(drogueClean)
arc2007doff=arc2007Clean(logical(~drogueClean),:);
arc2007don=arc2007Clean(logical(drogueClean),:);
arc2007dondrogue=arc2007Clean(logical(drogueClean),11);
arc2007doffdrogue=arc2007Clean(logical(~drogueClean),11);
arc2007donsst=arc2007Clean(logical(drogueClean),4);
arc2007doffsst=arc2007Clean(logical(~drogueClean),4);
arc2007RawDOn=arc2007(logical(drogueRaw),:);
arc2007RawDOnSST=arc2007(logical(drogueRaw),4);
arc2008DOnSST=arc2008Clean(logical(~arc2008Clean(:,11)),4);
arc2008DOffSST=arc2008Clean(logical(arc2008Clean(:,11)),4);
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

[sstRawDOnFit,sstDOnDev,sstRawDOnStats]=glmfit(arc2007RawDOn,arc2007RawDOnSST,'normal');
sstRawDOnFit
sstRawDOnStats.p
sstRawDOnStats.coeffcorr
sstRawDOnStats.se

%Compare 2007 glmfit using 2008 data against sat sst for 2008.
%[sst2008FitDOn, confidenceLow2008FitDOn,confidenceHigh2008FitDOn] = glmval(sstDonFit,arc2008Clean,'probit',sstDOnStats);

%why is the fit always bad? need a proper fit in order to run a useful
%regression.

%Compute yearly average of sst from 2008 data, compare agaist sat sst from
%2008.
%estimate yearly average as the average of all sst observations that year.
%Use 2008 non-sst data, fitting from 2007 data.
[sst2008yhatDOn, confidenceLow2008DOn,confidenceHigh2008DOn] = glmval(sstDOnFit,arc2008Clean,'probit',sstDOnStats);


%Plot the analysis results
plot(1:12,sstdoffstats.se,1:12,sstDOnStats.se,'Linewidth',2)
xlabel('coefficients')
ylabel('standard errors in glmfit')
title('Drogue on/off standard error from glmfit on sea surface temperatures') 
legend('drogue off', 'drogue on','Location','NorthWest')

plot(1:12,sstRawDOnStats.se,1:12,sstDOnStats.se,'Linewidth',2)
xlabel('coefficients')
ylabel('standard errors in glmfit')
title('Raw/Clean standard error from glmfit on sea surface temperatures') 
legend('Raw data', 'Clean Data','Location','NorthWest')

plot(1:12,sstDOnStats.p,1:12,sstdoffstats.p,1:12,sstRawDOnStats.p)
xlabel('coefficients')
ylabel('p-values in glmfit')
title('p-values for 12 data vectors with drogue on/off, sst, and raw/clean analysis') 
legend('Clean Regress on SST with Drogue On','Clean regress on SST with Drogue Off','Raw regress on SST with Drogue On','Location','NorthWest')




% hold on;
% plot(arc2008DOnSST,sst2008FitDOn)
% xlabel('Drifter SST Measurements')
% ylabel('y-hat estimates for SST measurements')
% title('GLM Value y-hat estimates for 2008 Arctic SST vs Actual Measurements') 

%[b,dev,stats] = glmfit(X,y,distr)
% x = [2100 2300 2500 2700 2900 3100 3300 3500 3700 3900 4100 4300]';
% n = [48 42 31 34 31 21 23 23 21 16 17 21]';
% y = [1 2 0 3 8 8 14 17 19 15 17 21]';
% b = glmfit(x,[y n],'poisson','link','probit');
% yfit = glmval(b, x,'probit','size', n);
% plot(x, y./n,'o',x,yfit./n,'-','LineWidth',2)
