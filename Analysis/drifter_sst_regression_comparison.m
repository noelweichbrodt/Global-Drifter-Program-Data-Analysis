%Read in data
[platID2007 obsTime2007 obsLat2007 obsLong2007 sst2007 ewCurrent2007 ... 
    nsCurrent2007 eLat2007 eLong2007 expNum2007 wmo2007 drogue2007] = ... 
    drifterDataImport('Data/2007_k_arc.csv');
arc2007 = [platID2007 obsTime2007 obsLat2007 obsLong2007 sst2007 ...
    ewCurrent2007 nsCurrent2007 eLat2007 eLong2007 expNum2007 wmo2007 drogue2007];
arc2007Clean = drifterDataClean(arc2007);
[platID2007Clean obsTime2007Clean obsLat2007Clean obsLong2007Clean sst2007Clean ... 
    ewCurrent2007Clean nsCurrent2007Clean eLat2007Clean eLong2007Clean ...
    expNum2007Clean wmo2007Clean drogue2007Clean]=drifterDataExplodeColumns(arc2007Clean);
[platID2008 obsTime2008 obsLat2008 obsLong2008 sst2008 ewCurrent2008 nsCurrent2008 ...
    eLat2008 eLong2008 expNum2008 wmo2008 drogue2008]=drifterDataImport('Data/2008_k_arc.csv');
arc2008 = [platID2008 obsTime2008 obsLat2008 obsLong2008 sst2008 ewCurrent2008 ... 
    nsCurrent2008 eLat2008 eLong2008 expNum2008 wmo2008 drogue2008];
arc2008Clean = drifterDataClean(arc2008);
[platID2008Clean obsTime2008Clean obsLat2008Clean obsLong2008Clean sst2008Clean ...
    ewCurrent2008Clean nsCurrent2008Clean eLat2008Clean eLong2008Clean ...
    expNum2008Clean wmo2008Clean drogue2008Clean] = drifterDataExplodeColumns(arc2008Clean);

%subsets for analysis

arc2007DOn=arc2007Clean(logical(~drogue2007Clean),:);
arc2007DOnPredictorsClean=cat(2,arc2007DOn(:,1:4),arc2007DOn(:,6:12));
arc2007DOnResponseClean = arc2007DOn(:,5);

arc2008DOn=arc2008Clean(logical(~drogue2008Clean),:);
arc2008DOnPredictorsClean=cat(2,arc2008DOn(:,1:4),arc2008DOn(:,6:12));
arc2008DOnResponseClean = arc2008DOn(:,5);

arc2008DOnLimitedPredictorsClean=arc2008DOn(:,8:10);
arc2007DOnLimitedPredictorsClean=arc2007DOn(:,8:10);

%modeling

[sstDonFit,sstDOnDev,sstDOnStats]=...
    glmfit(arc2007DOnPredictorsClean,arc2007DOnResponseClean,'normal');
[sstDonLimitedFit,sstDOnLimitedDev,sstDOnLimitedStats]=...
    glmfit(arc2007DOnLimitedPredictorsClean,arc2007DOnResponseClean,'normal');

%tried poisson/binominal, but not only do they not really match they also
%won't work with the negative numbers in y.
%Probit link doesn't help due to singular matrix resulting in NaNs.

%Compare 2007 glmfit using 2008 data against sat sst for 2008.
[sst2008FitDOn, confidenceLow2008FitDOn,confidenceHigh2008FitDOn] = glmval(sstDonFit,arc2008DOnPredictorsClean,'probit',sstDOnStats);
[sst2008LimitedFitDOn, confidenceLow2008LimitedFitDOn,confidenceHigh2008LimitedFitDOn] = glmval(sstDonLimitedFit,arc2008DOnLimitedPredictorsClean,'probit',sstDOnLimitedStats);

sst2008EstimateMean = mean(sst2008FitDOn);
sst2008Mean = mean(arc2008DOnResponseClean);
sst2008LimitedEstimateMean = mean(sst2008LimitedFitDOn);
sst2008median = median(arc2008DOnResponseClean);
sst2008mode = mode(arc2008DOnResponseClean);
sst2008max = max(arc2008DOnResponseClean);
sst2008min = min(arc2008DOnResponseClean);
sst2007Mean = mean(arc2007DOnResponseClean);
sst2007median = median(arc2007DOnResponseClean);
sst2007mode = mode(arc2007DOnResponseClean);
sst2007max = max(arc2007DOnResponseClean);
sst2007min = min(arc2007DOnResponseClean);

%Compute yearly average of sst from 2008 data, compare agaist sat sst from
%2008.
%estimate yearly average as the average of all sst observations that year.
%Use 2008 non-sst data, fitting from 2007 data.

%Plot the analysis results

hold on;
plot(min(arc2008DOnResponseClean):max(arc2008DOnResponseClean),sst2008Mean,'o',...
    min(arc2008DOnResponseClean):max(arc2008DOnResponseClean), sst2008EstimateMean,'o', ...
    min(arc2008DOnResponseClean):max(arc2008DOnResponseClean), sst2008LimitedEstimateMean,'o');
 xlabel('SST')
 ylabel('Mean')
 title('GLM Value mean estimates for 2008 Arctic SST vs Actual Measurements') 
 print -dpng 'Visualizations/glmfitSSTMeans.png'

 hold on;
 plot(1:length(arc2008DOnResponseClean),arc2008DOnResponseClean,1:length(arc2008DOnResponseClean),sst2008EstimateMean,1:length(arc2008DOnResponseClean),sst2008LimitedEstimateMean)
 xlabel('Observations')
 ylabel('SST')
 title('GLM Value y-hat estimates for 2008 Arctic SST vs Actual Measurements') 
 print -dpng 'Visualizations/glmfitSSTEst.png'
