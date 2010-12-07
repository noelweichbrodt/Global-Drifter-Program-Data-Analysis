clc
clear all

%import data, clean up
[platID1997 obsTime1997 obsLat1997 obsLong1997 sst1997 ewCurrent1997 ... 
    nsCurrent1997 eLat1997 eLong1997 expNum1997 wmo1997 drogue1997] = ... 
    drifterDataImport('1997_k_arc.csv');
arc1997 = [platID1997 obsTime1997 obsLat1997 obsLong1997 sst1997 ...
    ewCurrent1997 nsCurrent1997 eLat1997 eLong1997 expNum1997 wmo1997 drogue1997];
arc1997Clean = drifterDataClean(arc1997);
[platID1997Clean obsTime1997Clean obsLat1997Clean obsLong1997Clean sst1997Clean ... 
    ewCurrent1997Clean nsCurrent1997Clean eLat1997Clean eLong1997Clean ...
    expNum1997Clean wmo1997Clean drogue1997Clean]=drifterDataExplodeColumns(arc1997Clean);

[platID1998 obsTime1998 obsLat1998 obsLong1998 sst1998 ewCurrent1998 ... 
    nsCurrent1998 eLat1998 eLong1998 expNum1998 wmo1998 drogue1998] = ... 
    drifterDataImport('1998_k_arc.csv');
arc1998 = [platID1998 obsTime1998 obsLat1998 obsLong1998 sst1998 ...
    ewCurrent1998 nsCurrent1998 eLat1998 eLong1998 expNum1998 wmo1998 drogue1998];
arc1998Clean = drifterDataClean(arc1998);
[platID1998Clean obsTime1998Clean obsLat1998Clean obsLong1998Clean sst1998Clean ... 
    ewCurrent1998Clean nsCurrent1998Clean eLat1998Clean eLong1998Clean ...
    expNum1998Clean wmo1998Clean drogue1998Clean]=drifterDataExplodeColumns(arc1998Clean);

[platID1999 obsTime1999 obsLat1999 obsLong1999 sst1999 ewCurrent1999 ... 
    nsCurrent1999 eLat1999 eLong1999 expNum1999 wmo1999 drogue1999] = ... 
    drifterDataImport('1999_k_arc.csv');
arc1999 = [platID1999 obsTime1999 obsLat1999 obsLong1999 sst1999 ...
    ewCurrent1999 nsCurrent1999 eLat1999 eLong1999 expNum1999 wmo1999 drogue1999];
arc1999Clean = drifterDataClean(arc1999);
[platID1999Clean obsTime1999Clean obsLat1999Clean obsLong1999Clean sst1999Clean ... 
    ewCurrent1999Clean nsCurrent1999Clean eLat1999Clean eLong1999Clean ...
    expNum1999Clean wmo1999Clean drogue1999Clean]=drifterDataExplodeColumns(arc1999Clean);

[platID2000 obsTime2000 obsLat2000 obsLong2000 sst2000 ewCurrent2000 ... 
    nsCurrent2000 eLat2000 eLong2000 expNum2000 wmo2000 drogue2000] = ... 
    drifterDataImport('2000_k_arc.csv');
arc2000 = [platID2000 obsTime2000 obsLat2000 obsLong2000 sst2000 ...
    ewCurrent2000 nsCurrent2000 eLat2000 eLong2000 expNum2000 wmo2000 drogue2000];
arc2000Clean = drifterDataClean(arc2000);
[platID2000Clean obsTime2000Clean obsLat2000Clean obsLong2000Clean sst2000Clean ... 
    ewCurrent2000Clean nsCurrent2000Clean eLat2000Clean eLong2000Clean ...
    expNum2000Clean wmo2000Clean drogue2000Clean]=drifterDataExplodeColumns(arc2000Clean);

[platID2001 obsTime2001 obsLat2001 obsLong2001 sst2001 ewCurrent2001 ... 
    nsCurrent2001 eLat2001 eLong2001 expNum2001 wmo2001 drogue2001] = ... 
    drifterDataImport('2001_k_arc.csv');
arc2001 = [platID2001 obsTime2001 obsLat2001 obsLong2001 sst2001 ...
    ewCurrent2001 nsCurrent2001 eLat2001 eLong2001 expNum2001 wmo2001 drogue2001];
arc2001Clean = drifterDataClean(arc2001);
[platID2001Clean obsTime2001Clean obsLat2001Clean obsLong2001Clean sst2001Clean ... 
    ewCurrent2001Clean nsCurrent2001Clean eLat2001Clean eLong2001Clean ...
    expNum2001Clean wmo2001Clean drogue2001Clean]=drifterDataExplodeColumns(arc2001Clean);

[platID2002 obsTime2002 obsLat2002 obsLong2002 sst2002 ewCurrent2002 ... 
    nsCurrent2002 eLat2002 eLong2002 expNum2002 wmo2002 drogue2002] = ... 
    drifterDataImport('2002_k_arc.csv');
arc2002 = [platID2002 obsTime2002 obsLat2002 obsLong2002 sst2002 ...
    ewCurrent2002 nsCurrent2002 eLat2002 eLong2002 expNum2002 wmo2002 drogue2002];
arc2002Clean = drifterDataClean(arc2002);
[platID2002Clean obsTime2002Clean obsLat2002Clean obsLong2002Clean sst2002Clean ... 
    ewCurrent2002Clean nsCurrent2002Clean eLat2002Clean eLong2002Clean ...
    expNum2002Clean wmo2002Clean drogue2002Clean]=drifterDataExplodeColumns(arc2002Clean);

[platID2003 obsTime2003 obsLat2003 obsLong2003 sst2003 ewCurrent2003 ... 
    nsCurrent2003 eLat2003 eLong2003 expNum2003 wmo2003 drogue2003] = ... 
    drifterDataImport('2003_k_arc.csv');
arc2003 = [platID2003 obsTime2003 obsLat2003 obsLong2003 sst2003 ...
    ewCurrent2003 nsCurrent2003 eLat2003 eLong2003 expNum2003 wmo2003 drogue2003];
arc2003Clean = drifterDataClean(arc2003);
[platID2003Clean obsTime2003Clean obsLat2003Clean obsLong2003Clean sst2003Clean ... 
    ewCurrent2003Clean nsCurrent2003Clean eLat2003Clean eLong2003Clean ...
    expNum2003Clean wmo2003Clean drogue2003Clean]=drifterDataExplodeColumns(arc2003Clean);

[platID2004 obsTime2004 obsLat2004 obsLong2004 sst2004 ewCurrent2004 ... 
    nsCurrent2004 eLat2004 eLong2004 expNum2004 wmo2004 drogue2004] = ... 
    drifterDataImport('2004_k_arc.csv');
arc2004 = [platID2004 obsTime2004 obsLat2004 obsLong2004 sst2004 ...
    ewCurrent2004 nsCurrent2004 eLat2004 eLong2004 expNum2004 wmo2004 drogue2004];
arc2004Clean = drifterDataClean(arc2004);
[platID2004Clean obsTime2004Clean obsLat2004Clean obsLong2004Clean sst2004Clean ... 
    ewCurrent2004Clean nsCurrent2004Clean eLat2004Clean eLong2004Clean ...
    expNum2004Clean wmo2004Clean drogue2004Clean]=drifterDataExplodeColumns(arc2004Clean);

[platID2005 obsTime2005 obsLat2005 obsLong2005 sst2005 ewCurrent2005 ... 
    nsCurrent2005 eLat2005 eLong2005 expNum2005 wmo2005 drogue2005] = ... 
    drifterDataImport('2005_k_arc.csv');
arc2005 = [platID2005 obsTime2005 obsLat2005 obsLong2005 sst2005 ...
    ewCurrent2005 nsCurrent2005 eLat2005 eLong2005 expNum2005 wmo2005 drogue2005];
arc2005Clean = drifterDataClean(arc2005);
[platID2005Clean obsTime2005Clean obsLat2005Clean obsLong2005Clean sst2005Clean ... 
    ewCurrent2005Clean nsCurrent2005Clean eLat2005Clean eLong2005Clean ...
    expNum2005Clean wmo2005Clean drogue2005Clean]=drifterDataExplodeColumns(arc2005Clean);

[platID2006 obsTime2006 obsLat2006 obsLong2006 sst2006 ewCurrent2006 ... 
    nsCurrent2006 eLat2006 eLong2006 expNum2006 wmo2006 drogue2006] = ... 
    drifterDataImport('2006_k_arc.csv');
arc2006 = [platID2006 obsTime2006 obsLat2006 obsLong2006 sst2006 ...
    ewCurrent2006 nsCurrent2006 eLat2006 eLong2006 expNum2006 wmo2006 drogue2006];
arc2006Clean = drifterDataClean(arc2006);
[platID2006Clean obsTime2006Clean obsLat2006Clean obsLong2006Clean sst2006Clean ... 
    ewCurrent2006Clean nsCurrent2006Clean eLat2006Clean eLong2006Clean ...
    expNum2006Clean wmo2006Clean drogue2006Clean]=drifterDataExplodeColumns(arc2006Clean);

[platID2007 obsTime2007 obsLat2007 obsLong2007 sst2007 ewCurrent2007 ... 
    nsCurrent2007 eLat2007 eLong2007 expNum2007 wmo2007 drogue2007] = ... 
    drifterDataImport('2007_k_arc.csv');
arc2007 = [platID2007 obsTime2007 obsLat2007 obsLong2007 sst2007 ...
    ewCurrent2007 nsCurrent2007 eLat2007 eLong2007 expNum2007 wmo2007 drogue2007];
arc2007Clean = drifterDataClean(arc2007);
[platID2007Clean obsTime2007Clean obsLat2007Clean obsLong2007Clean sst2007Clean ... 
    ewCurrent2007Clean nsCurrent2007Clean eLat2007Clean eLong2007Clean ...
    expNum2007Clean wmo2007Clean drogue2007Clean]=drifterDataExplodeColumns(arc2007Clean);
[platID2008 obsTime2008 obsLat2008 obsLong2008 sst2008 ewCurrent2008 nsCurrent2008 ...
    eLat2008 eLong2008 expNum2008 wmo2008 drogue2008]=drifterDataImport('2008_k_arc.csv');
arc2008 = [platID2008 obsTime2008 obsLat2008 obsLong2008 sst2008 ewCurrent2008 ... 
    nsCurrent2008 eLat2008 eLong2008 expNum2008 wmo2008 drogue2008];
arc2008Clean = drifterDataClean(arc2008);
[platID2008Clean obsTime2008Clean obsLat2008Clean obsLong2008Clean sst2008Clean ...
    ewCurrent2008Clean nsCurrent2008Clean eLat2008Clean eLong2008Clean ...
    expNum2008Clean wmo2008Clean drogue2008Clean] = drifterDataExplodeColumns(arc2008Clean);


%Try subplots, comparing across oceans (present data is only for arctic O), 
% years, [need to sort by obsTime to compare across months, days, etc.]

%sorting (clean up obsTime FIRST!!!)
[A I] = sort(obsTime1999Clean); 
[Y, M, D, H, MN] = datevec(A);
Date =[I M D]; %[Index Month Day]
%Jan(end) = last index in january
% timeTest = datevec(obsTime2007);
% Test = arc2007Clean(Jan,:);
% LatTest=obsLat2007Clean(Jan);
% TimeReal = datestr(obsTime2007Clean);
% ObsLatTest = obsLat2007Clean(I);

%12 Year Arctic Current Raw
subplot(3,4,1);
plot3(obsLat1997Clean,obsLong1997Clean,ewCurrent1997Clean,'.')
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('1997 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,2);
plot3(obsLat1998Clean,obsLong1998Clean,ewCurrent1998Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('1998 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,3);
plot3(obsLat1999Clean,obsLong1999Clean,ewCurrent1999Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('1999 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,4);
plot3(obsLat2000Clean,obsLong2000Clean,ewCurrent2000Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('2000 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,5);
plot3(obsLat2001Clean,obsLong2001Clean,ewCurrent2001Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('2001 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,6);
plot3(obsLat2002Clean,obsLong2002Clean,ewCurrent2002Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('2002 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,7);
plot3(obsLat2003Clean,obsLong2003Clean,ewCurrent2003Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('2003 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,8);
plot3(obsLat2004Clean,obsLong2004Clean,ewCurrent2004Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('2004 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,9);
plot3(obsLat2005Clean,obsLong2005Clean,ewCurrent2005Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('2005 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,10);
plot3(obsLat2006Clean,obsLong2006Clean,ewCurrent2006Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('2006 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,11);
plot3(obsLat2007Clean,obsLong2007Clean,ewCurrent2007Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('2007 E-W Current')
axis([60 85 -200 200 -5 5])

subplot(3,4,12);
plot3(obsLat2008Clean,obsLong2008Clean,ewCurrent2008Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('2008 E-W Current')
axis([60 85 -200 200 -5 5])

%12 year Arctic Current Smoothing
[xhat yhat zhat] = smoothCurrentFunction(obsLat1997Clean',obsLong1997Clean',nsCurrent1997Clean');
subplot(3,4,1);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('1997 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat1998Clean',obsLong1998Clean',nsCurrent1998Clean');
subplot(3,4,2);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('1998 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean',obsLong1999Clean',nsCurrent1999Clean');
subplot(3,4,3);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('1999 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2000Clean',obsLong2000Clean',nsCurrent2000Clean');
subplot(3,4,4);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2000 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2001Clean',obsLong2001Clean',nsCurrent2001Clean');
subplot(3,4,5);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2001 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2002Clean',obsLong2002Clean',nsCurrent2002Clean');
subplot(3,4,6);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2002 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2003Clean',obsLong2003Clean',nsCurrent2003Clean');
subplot(3,4,7);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2003 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2004Clean',obsLong2004Clean',nsCurrent2004Clean');
subplot(3,4,8);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2004 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2005Clean',obsLong2005Clean',nsCurrent2005Clean');
subplot(3,4,9);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2005 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2006Clean',obsLong2006Clean',nsCurrent2006Clean');
subplot(3,4,10);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2006 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2007Clean',obsLong2007Clean',nsCurrent2007Clean');
subplot(3,4,11);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2007 N-S Current')
axis([60 85 -200 200 -.25 .25])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2008Clean',obsLong2008Clean',nsCurrent2008Clean');
subplot(3,4,12);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2008 N-S Current')
axis([60 85 -200 200 -.25 .25])

%12 Year Arctic SST Raw
subplot(3,4,1);
plot3(obsLat1997Clean,obsLong1997Clean,sst1997Clean,'.')
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('1997 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,2);
plot3(obsLat1998Clean,obsLong1998Clean,sst1998Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('1998 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,3);
plot3(obsLat1999Clean,obsLong1999Clean,sst1999Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('1999 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,4);
plot3(obsLat2000Clean,obsLong2000Clean,sst2000Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2000 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,5);
plot3(obsLat2001Clean,obsLong2001Clean,sst2001Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2001 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,6);
plot3(obsLat2002Clean,obsLong2002Clean,sst2002Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2002 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,7);
plot3(obsLat2003Clean,obsLong2003Clean,sst2003Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2003 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,8);
plot3(obsLat2004Clean,obsLong2004Clean,sst2004Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2004 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,9);
plot3(obsLat2005Clean,obsLong2005Clean,sst2005Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2005 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,10);
plot3(obsLat2006Clean,obsLong2006Clean,sst2006Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2006 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,11);
plot3(obsLat2007Clean,obsLong2007Clean,sst2007Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2007 Arctic SST')
axis([60 85 -200 200 -5 20])

subplot(3,4,12);
plot3(obsLat2008Clean,obsLong2008Clean,sst2008Clean,'.');
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2008 Arctic SST')
axis([60 85 -200 200 -5 20])

%12 year Arctic SST Smoothing
[xhat yhat zhat] = smoothCurrentFunction(obsLat1997Clean',obsLong1997Clean',sst1997Clean');
subplot(3,4,1);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('1997 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat1998Clean',obsLong1998Clean',sst1998Clean');
subplot(3,4,2);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('1998 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean',obsLong1999Clean',sst1999Clean');
subplot(3,4,3);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('1999 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2000Clean',obsLong2000Clean',sst2000Clean');
subplot(3,4,4);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2000 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2001Clean',obsLong2001Clean',sst2001Clean');
subplot(3,4,5);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2001 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2002Clean',obsLong2002Clean',sst2002Clean');
subplot(3,4,6);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2002 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2003Clean',obsLong2003Clean',sst2003Clean');
subplot(3,4,7);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2003 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2004Clean',obsLong2004Clean',sst2004Clean');
subplot(3,4,8);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2004 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2005Clean',obsLong2005Clean',sst2005Clean');
subplot(3,4,9);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2005 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2006Clean',obsLong2006Clean',sst2006Clean');
subplot(3,4,10);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2006 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2007Clean',obsLong2007Clean',sst2007Clean');
subplot(3,4,11);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2007 Arctic SST')
axis([60 85 -200 200 2 12])

[xhat yhat zhat] = smoothCurrentFunction(obsLat2008Clean',obsLong2008Clean',sst2008Clean');
subplot(3,4,12);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('Sea Surface Temp. (deg. C)')
title('2008 Arctic SST')
axis([60 85 -200 200 2 12])

%1999 Arctic Monthly Current
Jan = find(Date(:,2)==1);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Jan))',obsLong1999Clean(I(Jan))',nsCurrent1999Clean(I(Jan))');
a1 = subplot(3,4,1);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('January N-S Current')
axis([60 80 -200 200 -.08 .05])

Feb = find(Date(:,2)==2);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Feb))',obsLong1999Clean(I(Feb))',nsCurrent1999Clean(I(Feb))');
a2 = subplot(3,4,2);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('February N-S Current')
axis([60 80 -200 200 -.08 .05])

Mar = find(Date(:,2)==3);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Mar))',obsLong1999Clean(I(Mar))',nsCurrent1999Clean(I(Mar))');
a3 = subplot(3,4,3);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('March N-S Current')
axis([60 80 -200 200 -.08 .05])

Apr = find(Date(:,2)==4);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Apr))',obsLong1999Clean(I(Apr))',nsCurrent1999Clean(I(Apr))');
a4= subplot(3,4,4);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('April N-S Current')
axis([60 80 -200 200 -.08 .05])

May = find(Date(:,2)==5);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(May))',obsLong1999Clean(I(May))',nsCurrent1999Clean(I(May))');
a5= subplot(3,4,5);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('May N-S Current')
axis([60 80 -200 200 -.08 .05])

Jun = find(Date(:,2)==6);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Jun))',obsLong1999Clean(I(Jun))',nsCurrent1999Clean(I(Jun))');
a6= subplot(3,4,6);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('June N-S Current')
axis([60 80 -200 200 -.08 .05])

Jul = find(Date(:,2)==7);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Jul))',obsLong1999Clean(I(Jul))',nsCurrent1999Clean(I(Jul))');
a7= subplot(3,4,7);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('July N-S Current')
axis([60 80 -200 200 -.08 .05])

Aug = find(Date(:,2)==8);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Aug))',obsLong1999Clean(I(Aug))',nsCurrent1999Clean(I(Aug))');
a8= subplot(3,4,8);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('August N-S Current')
axis([60 80 -200 200 -.08 .05])

Sep = find(Date(:,2)==9);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Sep))',obsLong1999Clean(I(Sep))',nsCurrent1999Clean(I(Sep))');
a9= subplot(3,4,9);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('September N-S Current')
axis([60 80 -200 200 -.08 .05])

Oct = find(Date(:,2)==10);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Oct))',obsLong1999Clean(I(Oct))',nsCurrent1999Clean(I(Oct))');
a10= subplot(3,4,10);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('October N-S Current')
axis([60 80 -200 200 -.08 .05])

Nov = find(Date(:,2)==11);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Nov))',obsLong1999Clean(I(Nov))',nsCurrent1999Clean(I(Nov))');
a11= subplot(3,4,11);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('November N-S Current')
axis([60 80 -200 200 -.08 .05])

Dec = find(Date(:,2)==12);
[xhat yhat zhat] = smoothCurrentFunction(obsLat1999Clean(I(Dec))',obsLong1999Clean(I(Dec))',nsCurrent1999Clean(I(Dec))');
a12= subplot(3,4,12);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('December N-S Current')
axis([60 80 -200 200 -.08 .05])

%2007 Arctic SST
X=obsLat1999Clean';
Y=obsLong1999Clean';
Z=ewCurrent1999Clean';

plot3(X,Y,Z,'.')
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
title('1999 Arctic E-W Current')
axis auto
hold on
%view(az,el) -> indicates angle of view when plot is created

[xhat yhat zhat] = smoothCurrentFunction(X,Y,Z);
surf(xhat,yhat,zhat)
xlabel('Latitude')
ylabel('Longitude')
zlabel('E-W Current (m/s)')
axis auto
hold on

%2008 Arctic Current
X1=obsLat2008Clean';
Y1=obsLong2008Clean';
Z1=nsCurrent2008Clean';

plot3(X1,Y1,Z1,'.')
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
axis auto
hold on
%view(az,el) -> indicates angle of view when plot is created

[xhat1 yhat1 zhat1] = smoothCurrentFunction(X1,Y1,Z1);
surf(xhat1,yhat1,zhat1)
xlabel('Latitude')
ylabel('Longitude')
zlabel('N-S Current (m/s)')
title('2008 Arctic N-S Current')
axis auto