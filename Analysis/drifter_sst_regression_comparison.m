%Read in data
[platID2007 obsLat2007 obsLong2007 sst2007 ewCurrent2007 nsCurrent2007 eLat2007 eLong2007 expNum2007 wmo2007 drogue2007]=drifterDataImport('Data/2007_k_arc.csv');
arc2007 = [platID2007 obsLat2007 obsLong2007 sst2007 ewCurrent2007 nsCurrent2007 eLat2007 eLong2007 expNum2007 wmo2007 drogue2007];
arc2007Clean = drifterDataClean(arc2007);
[platID2007Clean obsLat2007Clean obsLong2007Clean sst2007Clean ewCurrent2007Clean nsCurrent2007Clean eLat2007Clean eLong2007Clean expNum2007Clean wmo2007Clean drogue2007Clean]=drifterDataExplodeColumns(arc2007Clean);
[platID2008 obsLat2008 obsLong2008 sst2008 ewCurrent2008 nsCurrent2008 eLat2008 eLong2008 expNum2008 wmo2008 drogue2008]=drifterDataImport('Data/2008_k_arc.csv');
arc2008 = [platID2008 obsLat2008 obsLong2008 sst2008 ewCurrent2008 nsCurrent2008 eLat2008 eLong2008 expNum2008 wmo2008 drogue2008];
arc2008Clean = drifterDataClean(arc2008);

arc2007dondrogue=arc2007Clean(logical(drogue2007Clean),11);
arc2007donsst=arc2007Clean(logical(drogue2007Clean),4);
arc2007RawDOn=arc2007(logical(drogue2007),:);
arc2007RawDOnSST=arc2007(logical(drogue2007),4);
arc2008DOnSST=arc2008Clean(logical(~arc2008Clean(:,11)),4);
arc2008DOffSST=arc2008Clean(logical(arc2008Clean(:,11)),4);

%analysis: standard error on drogue on/off, coefficients on sst, standard
%error on clean vs unclean data on sst.


[sstDonFit,sstDOnDev,sstDOnStats]=glmfit(arc2007don,arc2007donsst,'normal');
sstDonFit
sstDOnStats.p
sstDOnStats.coeffcorr
sstDOnStats.se

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
