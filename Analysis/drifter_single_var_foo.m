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

%Create subsets of data for analysis
length(drogue2007)-length(drogue2007Clean)

arc2007DOff=arc2007Clean(logical(~drogue2007Clean),:);
arc2007PredictorsCleanDOff=cat(2,arc2007DOff(:,1:4),arc2007DOff(:,6:12));
arc2007ResponseCleanDOff = arc2007DOff(:,5);

arc2007DOn=arc2007Clean(logical(drogue2007Clean),:);
arc2007DOnPredictorsClean=cat(2,arc2007DOn(:,1:4),arc2007DOn(:,6:12));
arc2007DOnResponseClean = arc2007DOn(:,5);

arc2007DonRaw=arc2007(logical(drogue2007),:);
arc2007DOnPredictorsRaw=cat(2,arc2007DonRaw(:,1:4),arc2007DonRaw(:,6:12));
arc2007DOnResponseRaw=arc2007DonRaw(:,5);

arc2007don=arc2007Clean(logical(drogue2007Clean),:);
arc2007dondrogue=arc2007Clean(logical(drogue2007Clean),11);
arc2007DOffdrogue=arc2007Clean(logical(~drogue2007Clean),11);
arc2007RawDOn=arc2007(logical(drogue2007),:);
arc2007RawDOnSST=arc2007(logical(drogue2007),4);

%analysis: standard error on drogue on/off, coefficients on sst, standard
%error on clean vs unclean data on sst.

[droguefit,droguedev,droguestats]=glmfit(arc2007Clean,drogue2007Clean,'normal');
droguefit
droguestats.p
droguestats.coeffcorr
droguestats.se

[drogueonfit,drogueOnDev,drogueonstats]=glmfit(arc2007don,arc2007dondrogue,'normal');
drogueonfit
drogueonstats.p
drogueonstats.coeffcorr
drogueonstats.se

[drogueofffit,drogueOffDev,drogueoffstats]=glmfit(arc2007DOff,arc2007DOffdrogue,'normal');
drogueofffit
drogueoffstats.p
drogueoffstats.coeffcorr
drogueoffstats.se

[sstDonFit,sstDOnDev,sstDOnStats]=glmfit(arc2007DOnPredictorsClean,arc2007DOnResponseClean,'normal');
sstDonFit
sstDOnStats.p
sstDOnStats.coeffcorr
sstDOnStats.se

[sstdofffit,sstDOffDev,sstdoffstats]=glmfit(arc2007PredictorsCleanDOff,arc2007ResponseCleanDOff,'normal');
sstdofffit
sstdoffstats.p
sstdoffstats.coeffcorr
sstdoffstats.se

[sstRawDOnFit,sstDOnDev,sstRawDOnStats]=glmfit(arc2007DOnPredictorsRaw,arc2007DOnResponseRaw,'normal');
sstRawDOnFit
sstRawDOnStats.p
sstRawDOnStats.coeffcorr
sstRawDOnStats.se

avgGLMPValues=mean(cat(2,sstRawDOnStats.p,sstdoffstats.p,sstDOnStats.p),2);

%why is the fit always bad? need a proper fit in order to run a useful
%regression.

%Plot the analysis results
figure;
plot(1:12,sstdoffstats.se,1:12,sstDOnStats.se,'Linewidth',2)
xlabel('coefficients')
ylabel('standard errors in glmfit')
title('Drogue on/off standard error from glmfit on sea surface temperatures') 
legend('drogue off', 'drogue on','Location','NorthWest')
print -dpng 'Visualizations/glmfitSSTDrogueSE.png'
% im = imread('image.tif');
% f = figure, imshow(im, 'Border', 'tight');
% rectangle('Position', [100, 100, 10, 10]);
% print(f, '-r80', '-dtiff', 'image2.tif');

figure;
plot(1:12,sstRawDOnStats.se,1:12,sstDOnStats.se,'Linewidth',2)
xlabel('coefficients')
ylabel('standard errors in glmfit')
title('Raw/Clean standard error from glmfit on sea surface temperatures') 
legend('Raw data', 'Clean Data','Location','NorthWest')
print -dpng 'Visualizations/glmfitSSTRawSE.png'

figure;
plot(1:12,sstDOnStats.p,1:12,sstdoffstats.p,1:12,sstRawDOnStats.p)
xlabel('coefficients')
ylabel('p-values in glmfit')
title('p-values for 12 data vectors with drogue on/off, sst, and raw/clean analysis') 
legend('Clean Regress on SST with Drogue On','Clean regress on SST with Drogue Off','Raw regress on SST with Drogue On','Location','NorthWest')
print -dpng 'Visualizations/glmfitSSTPvals.png'

figure;
plot(1:12,sstDonFit,1:12,sstdofffit,1:12,sstRawDOnFit)
xlabel('coefficients')
ylabel('betas from glmfit')
title('beta estimates for sst using 11 data vectors with drogue on/off, and raw/clean analysis') 
legend('Clean Regress on SST with Drogue On','Clean regress on SST with Drogue Off','Raw regress on SST with Drogue On','Location','NorthWest')
print -dpng 'Visualizations/glmfitSSTRegress.png'

plot(1:12,avgGLMPValues)
xlabel('coefficients')
ylabel('mean of p-values in glmfit')
title('mean of p-values for 12 data vectors with drogue on/off, sst, and raw/clean analysis')
print -dpng 'Visualizations/glmfitSSTMeanPvals.png'